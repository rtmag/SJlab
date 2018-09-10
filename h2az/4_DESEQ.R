library(Rsubread)
options(scipen=999)

data<-featureCounts(c(
"/home/roberto/h2az/bam_rna/shrsh_siControl_Aligned.sortedByCoord.out.bam",
"/home/roberto/h2az/bam_rna/tham_siControl_Aligned.sortedByCoord.out.bam",
"/home/roberto/h2az/bam_rna/zhou_siControl_Aligned.sortedByCoord.out.bam",
"/home/roberto/h2az/bam_rna/shrsh_siTIP60_Aligned.sortedByCoord.out.bam",
"/home/roberto/h2az/bam_rna/tham_siTIP60_Aligned.sortedByCoord.out.bam",
"/home/roberto/h2az/bam_rna/zhou_siTIP60_Aligned.sortedByCoord.out.bam"),
annot.ext="/home/roberto/references/gencode.v26.annotation.gtf",
isGTFAnnotationFile=TRUE,
minMQS=4,
strandSpecific=0,
isPairedEnd=TRUE,
autosort=TRUE,
nthreads=60,
GTF.attrType="gene_name"
)

dat=data[[1]]
colnames(dat)=c("shrh_siC","tham_siC","zhou_siC",
                "shrh_siK","tham_siK","zhou_siK")

saveRDS(dat,"RNASEQ_counts.rds")
############################################################################################################
countData=readRDS("RNASEQ_counts.rds")
options(scipen=999)
library(DESeq2)
library(gplots)
library(factoextra)
library(RColorBrewer)

design<-data.frame(group=c("shrh_siC","tham_siC","zhou_siC",
                "shrh_siK","tham_siK","zhou_siK") )

dLRT <- DESeqDataSetFromMatrix(countData = countData, colData = design, design = ~ group )
dLRT <- DESeq(dLRT, test="LRT", reduced=~1)
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
dLRT_res = results(dLRT)
vsd = assay(dLRT_vsd)

pdf("Diagnostic_pca_all_samples.pdf")
plotPCA(dLRT_vsd,ntop=50000,intgroup=c("group"))
dev.off()

saveRDS(vsd,"h2az_vsd.rds")
############################################################################################################
options(scipen=999)
library(gplots)
library(factoextra)
library(RColorBrewer)
library(DESeq2)

countData = readRDS("RNASEQ_counts.rds")
#design<-data.frame(group=c("shrh_siC","tham_siC","zhou_siC",
#                "shrh_siK","tham_siK","zhou_siK") )

design<- data.frame(treatment=c("siC","siC","siC","siK","siK","siK"),
                    batch=c("shrh","tham","zhou","shrh","tham","zhou") )

dLRT <- DESeqDataSetFromMatrix(countData = countData, colData = design, design = ~ batch+treatment )
dLRT <- DESeq(dLRT, test="LRT", full=  ~ batch + treatment, reduced=~batch)
dLRT_res =  results(dLRT,contrast=c("treatment","siK","siC"))
res <- lfcShrink(dds=dLRT, coef=2, res=dLRT_res)

table(dLRT_res$padj<0.05 & abs(dLRT_res$log2FoldChange)>1)
table(res$padj<0.05 & abs(res$log2FoldChange)>1)

write.table(rownames(dLRT_res[which(dLRT_res$padj<0.05 & dLRT_res$log2FoldChange>(1)),]),"Upreg_notShink.txt",
            sep="\t",quote=F,row.names=F,col.names=F )

write.table(rownames(dLRT_res[which(dLRT_res$padj<0.05 & dLRT_res$log2FoldChange<(-1)),]),"Downreg_notShink.txt",
            sep="\t",quote=F,row.names=F,col.names=F )

write.table(rownames(res[which(res$padj<0.05 & res$log2FoldChange>(1)),]),"Upreg_Shink.txt",
            sep="\t",quote=F,row.names=F,col.names=F )

write.table(rownames(res[which(res$padj<0.05 & res$log2FoldChange<(-1)),]),"Downreg_nShink.txt",
            sep="\t",quote=F,row.names=F,col.names=F )

write.table(rownames(dLRT_res[which(dLRT_res$padj<0.05 & abs(dLRT_res$log2FoldChange)>1),]),"all_notShink.txt",
            sep="\t",quote=F,row.names=F,col.names=F )

write.table(rownames(res[which(res$padj<0.05 & abs(res$log2FoldChange)>1),]),"all_Shink.txt",
            sep="\t",quote=F,row.names=F,col.names=F )



write.table(rownames(dLRT_res[which(dLRT_res$padj<0.001 & dLRT_res$log2FoldChange>(1.2)),]),"Upreg_notShink_strict.txt",
            sep="\t",quote=F,row.names=F,col.names=F )

write.table(rownames(dLRT_res[which(dLRT_res$padj<0.001 & dLRT_res$log2FoldChange<(-1.2)),]),"Downreg_notShink_strict.txt",
            sep="\t",quote=F,row.names=F,col.names=F )


gmt = read.table("HallMark_e2f_targets.txt",sep = "\t", head=T,stringsAsFactors=F)
vsd = readRDS("h2az_vsd.rds")


pdf("e2f_targets_siginificantChange.pdf")
sig_vsd = vsd[(rownames(vsd) %in% gmt[,1]) & ((abs(dLRT_res$log2FoldChange)>1 & dLRT_res$padj<0.05)),]
sig_vsd = sig_vsd[complete.cases(sig_vsd),]
sig_vsd = sig_vsd[complete.cases(sig_vsd),]
for(ix in 1:dim(sig_vsd)[1]){
  sig_vsd[ix,1] = sig_vsd[ix,1]/mean(sig_vsd[ix,c(1,4)])
  sig_vsd[ix,4] = sig_vsd[ix,4]/mean(sig_vsd[ix,c(1,4)])
  sig_vsd[ix,2] = sig_vsd[ix,2]/mean(sig_vsd[ix,c(2,5)])
  sig_vsd[ix,5] = sig_vsd[ix,5]/mean(sig_vsd[ix,c(2,5)])
  sig_vsd[ix,3] = sig_vsd[ix,3]/mean(sig_vsd[ix,c(3,6)])
  sig_vsd[ix,6] = sig_vsd[ix,6]/mean(sig_vsd[ix,c(3,6)])
  }

  colnames(sig_vsd) = c("shrh_siC","tham_siC","zhou_siC",
                "shrh_siK","tham_siK","zhou_siK")
  colors <- rev(colorRampPalette( (brewer.pal(9, "RdBu")) )(20))
  heatmap.2(sig_vsd,col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="E2F Target Genes",key.title="Gene expression",cexCol=.65,cexRow=.6)
dev.off()

pdf("e2f_targets_ALL.pdf")
sig_vsd = vsd[(rownames(vsd) %in% gmt[,1]),]
sig_vsd = sig_vsd[complete.cases(sig_vsd),]
sig_vsd = sig_vsd[complete.cases(sig_vsd),]
for(ix in 1:dim(sig_vsd)[1]){
  sig_vsd[ix,1] = sig_vsd[ix,1]/mean(sig_vsd[ix,c(1,4)])
  sig_vsd[ix,4] = sig_vsd[ix,4]/mean(sig_vsd[ix,c(1,4)])
  sig_vsd[ix,2] = sig_vsd[ix,2]/mean(sig_vsd[ix,c(2,5)])
  sig_vsd[ix,5] = sig_vsd[ix,5]/mean(sig_vsd[ix,c(2,5)])
  sig_vsd[ix,3] = sig_vsd[ix,3]/mean(sig_vsd[ix,c(3,6)])
  sig_vsd[ix,6] = sig_vsd[ix,6]/mean(sig_vsd[ix,c(3,6)])
  }

  colnames(sig_vsd) = c("shrh_siC","tham_siC","zhou_siC",
                "shrh_siK","tham_siK","zhou_siK")
  colors <- rev(colorRampPalette( (brewer.pal(9, "RdBu")) )(20))
  heatmap.2(sig_vsd,col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="E2F Target Genes",key.title="Gene expression",cexCol=.65,cexRow=.6)
dev.off()

pdf("dreamComplex_all.pdf")
sig_vsd = vsd[rownames(vsd) %in% c("LIN9","LIN54","LIN52","LIN37","FOXM1","MYB","MYBL2","KCNIP3","RB1","KIF2A","E2F2",
                                    "DYRK1A","TP53","CDKN1A","E2F4","RBBP4","TFDP1","RBL2","RBL1","E2F5","TFDP2","MYBL1",
                                    "NOLC1","FLNA","BIRC5","PLK1","CDC25C","CLTC","LATS2","SPTA1","MEIS2","SPTBN1","CLTA",
                                    "FAM111A","NEIL3","E2F1","E2F3","E2F6","E2F7","E2F8"),]
sig_vsd = sig_vsd[complete.cases(sig_vsd),]
for(ix in 1:dim(sig_vsd)[1]){
  sig_vsd[ix,1] = sig_vsd[ix,1]/mean(sig_vsd[ix,c(1,4)])
  sig_vsd[ix,4] = sig_vsd[ix,4]/mean(sig_vsd[ix,c(1,4)])
  sig_vsd[ix,2] = sig_vsd[ix,2]/mean(sig_vsd[ix,c(2,5)])
  sig_vsd[ix,5] = sig_vsd[ix,5]/mean(sig_vsd[ix,c(2,5)])
  sig_vsd[ix,3] = sig_vsd[ix,3]/mean(sig_vsd[ix,c(3,6)])
  sig_vsd[ix,6] = sig_vsd[ix,6]/mean(sig_vsd[ix,c(3,6)])
  }

  colnames(sig_vsd) = c("shrh_siC","tham_siC","zhou_siC",
                "shrh_siK","tham_siK","zhou_siK")
  colors <- rev(colorRampPalette( (brewer.pal(9, "RdBu")) )(20))
  heatmap.2(sig_vsd,col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="DREAM complex Genes",key.title="Gene expression",cexCol=.65,cexRow=.6)
dev.off()

pdf("dreamComplex_significant.pdf")
sig_vsd = vsd[rownames(vsd) %in% c("LIN9","LIN54","LIN52","LIN37","FOXM1","MYB","MYBL2","KCNIP3","RB1","KIF2A","E2F2",
                                    "DYRK1A","TP53","CDKN1A","E2F4","RBBP4","TFDP1","RBL2","RBL1","E2F5","TFDP2","MYBL1",
                                    "NOLC1","FLNA","BIRC5","PLK1","CDC25C","CLTC","LATS2","SPTA1","MEIS2","SPTBN1","CLTA",
                                    "FAM111A","NEIL3","E2F1","E2F3","E2F6","E2F7","E2F8"),]
sig_vsd = sig_vsd[complete.cases(sig_vsd),]
sig_vsd = sig_vsd[rownames(sig_vsd) %in% rownames(dLRT_res)[which(abs(dLRT_res$log2FoldChange)>1 & dLRT_res$padj<0.05)], ]
for(ix in 1:dim(sig_vsd)[1]){
  sig_vsd[ix,1] = sig_vsd[ix,1]/mean(sig_vsd[ix,c(1,4)])
  sig_vsd[ix,4] = sig_vsd[ix,4]/mean(sig_vsd[ix,c(1,4)])
  sig_vsd[ix,2] = sig_vsd[ix,2]/mean(sig_vsd[ix,c(2,5)])
  sig_vsd[ix,5] = sig_vsd[ix,5]/mean(sig_vsd[ix,c(2,5)])
  sig_vsd[ix,3] = sig_vsd[ix,3]/mean(sig_vsd[ix,c(3,6)])
  sig_vsd[ix,6] = sig_vsd[ix,6]/mean(sig_vsd[ix,c(3,6)])
  }

  colnames(sig_vsd) = c("shrh_siC","tham_siC","zhou_siC",
                "shrh_siK","tham_siK","zhou_siK")
  colors <- rev(colorRampPalette( (brewer.pal(9, "RdBu")) )(20))
  heatmap.2(sig_vsd,col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="DREAM complex Genes",key.title="Gene expression",cexCol=.65,cexRow=.6)
dev.off()
####################################################################################################################################
