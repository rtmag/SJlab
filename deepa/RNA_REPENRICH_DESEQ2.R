# DESEQ2 

library('DESeq2')
library(gplots)
library(factoextra)
library(RColorBrewer)
options(scipen=999)

siC_r1 <- read.delim('HCT_siControl_HWN2YCCXX_L5_fraction_counts.txt', header=FALSE)
siC_r2 <- read.delim('HCT116_siC_fraction_counts.txt', header=FALSE)
siK_r1 <- read.delim('HCT_siK_HVNYLCCXX_L2_fraction_counts.txt', header=FALSE)
siK_r2 <- read.delim('HCT116_siK_fraction_counts.txt', header=FALSE)
dmso_r1 <- read.delim('HCT_DMSO_HWN2YCCXX_L2_fraction_counts.txt', header=FALSE)
dmso_r2 <- read.delim('HCT116_siC_DMSO_fraction_counts.txt', header=FALSE)
jq1_r1 <- read.delim('HCT_JQ1_HWN2YCCXX_L5_fraction_counts.txt', header=FALSE)
jq1_r2 <- read.delim('HCT116_siC_JQ1_fraction_counts.txt', header=FALSE)

#' Build a counts table
counts <- data.frame(
  row.names = siC_r1[,1],  
  siC_r1 = siC_r1[,4], siC_r2 = siC_r2[,4], 
  siK_r1 = siK_r1[,4], siK_r2 = siK_r2[,4], 
  dmso_r1 = dmso_r1[,4], dmso_r2 = dmso_r2[,4],
  jq1_r1 = jq1_r1[,4], jq1_r2 = jq1_r2[,4]
)
anno = siC_r1[,3][!siC_r1[,3] %in% c("srpRNA", "rRNA", "snRNA", "tRNA", "scRNA", "Satellite")]
counts = counts[!siC_r1[,3] %in% c("srpRNA", "rRNA", "snRNA", "tRNA", "scRNA", "Satellite"), ]

design<-data.frame(batch=c("1","2","1","2"),
                   Treatment=c("siC","siC","siK","siK") )

dds <- DESeqDataSetFromMatrix(countData = counts[,1:4], colData = design, design = ~ batch + Treatment )

dds <- DESeq(dds, test="LRT", 
           full= ~ batch + Treatment, 
           reduced= ~ batch )


dLRT_vsd <- varianceStabilizingTransformation(dds)
vsd = assay(dLRT_vsd)

pdf("deseq_pca.pdf")
plotPCA(dLRT_vsd,ntop=50000,intgroup=c("Treatment","batch"))
dev.off()
#
dds_res = results(dds,contrast=c("Treatment","siC","siK"))

pdf("deseq_volcano.pdf")
plot(dds_res$log2FoldChange,-log10(dds_res$padj),xlab=expression('Log'[2]*' Fold Change ( siControl / siTIP60 )'),
              ylab=expression('-Log'[10]*' Q-values'),col=alpha("grey",.5),pch=20,xlim=c(-2,2))
abline(v=-.5,lty = 2,col="grey")
abline(v=.5,lty = 2,col="grey")
abline(h=-log10(0.05),lty = 2,col="grey")
points(dds_res$log2FoldChange[abs(dds_res$log2FoldChange)>.5 & dds_res$padj<0.05],
       -log10(dds_res$padj)[abs(dds_res$log2FoldChange)>.5 & dds_res$padj<0.05],
      col="red",pch=20)
dev.off()
#
tenames=names(which(table(anno[which(dds_res$padj<0.05)])>5))

sig_vsd = vsd[which( dds_res$padj<0.05 & anno %in% tenames),]
colnames(sig_vsd) <- c("siControl.1","siControl.2","siTIP60.1","siTIP60.2")


colors <- rev(colorRampPalette( (brewer.pal(9, "RdBu")) )(20))
heatmap.2(sig_vsd,col=colors,scale="row", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
labRow = FALSE,xlab="", ylab="TE",key.title="TE expression",cexCol=.8)



