library(Rsubread)
library(DESeq2)
library(graphics)
############# Feature Count; Meta-Gene by exons #############

data<-featureCounts(c(
"/home/rtm/SJlab/nicole/r1_bam_merged/LPCX-siC.bam",
"/home/rtm/SJlab/nicole/r1_bam_merged/LPCX-siK.bam",
"/home/rtm/SJlab/nicole/r1_bam_merged/TIP60-siC.bam",
"/home/rtm/SJlab/nicole/r1_bam_merged/TIP60-siK.bam",
"/home/rtm/SJlab/nicole/bgi/bam/LPCX-siC_Aligned.sortedByCoord.out.bam",
"/home/rtm/SJlab/nicole/bgi/bam/LPCX-siK_Aligned.sortedByCoord.out.bam",
"/home/rtm/SJlab/nicole/bgi/bam/TIP60-siC_Aligned.sortedByCoord.out.bam",
"/home/rtm/SJlab/nicole/bgi/bam/TIP60-siK_Aligned.sortedByCoord.out.bam"
),
annot.ext="/home/rtm/resources/hg19_genes.gtf",
isGTFAnnotationFile=TRUE,
minMQS=10,
strandSpecific=2,
isPairedEnd=TRUE,
#PE_orientation="rf",
autosort=TRUE,
nthreads=15,
GTF.attrType="gene_name"
)


colnames(data[[1]])<-c("r1_LPCX_siC","r1_LPCX_siK","r1_TIP60_siC","r1_TIP60_siK",
                       "r2_LPCX_siC","r2_LPCX_siK","r2_TIP60_siC","r2_TIP60_siK")
write.csv(data[[1]],file="r1r2_counts.csv")
countData<-data[[1]]

design<-data.frame(experiment=colnames(countData), batch = c("r1","r1","r1","r1","r2","r2","r2","r2"),
                                            vector = c("LPCX","LPCX","TIP60","TIP60", "LPCX","LPCX","TIP60","TIP60"),
                                            treatment = c("siC","siK","siC","siK","siC","siK","siC","siK") )


dLRT <- DESeqDataSetFromMatrix(countData = countData, colData = design, design = ~ batch + vector + treatment)
dLRT <- DESeq(dLRT, test="LRT", reduced=~1)
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
dLRT_res <- results(dLRT)

pdf("Diagnostic_design_pcs.pdf")
plotPCA(dLRT_vsd,ntop=30000,intgroup=c("batch","treatment","vector"))
dev.off()

######
dLRT <- DESeqDataSetFromMatrix(countData = countData, colData = design, design = ~ batch + vector + treatment)
dLRT <- DESeq(dLRT, test="LRT",full= ~ batch + vector + treatment , reduced=~ batch + vector)
dDif_res <- results(dLRT,contrast=c("treatment","siC","siK"))

#pdf("Volcano_full=batch+vector+treatment_reduced=batch+vector.pdf")
x=dDif_res
smoothScatter(x$log2FoldChange,-log10(x$padj),xlab=expression('Log'[2]*' Fold Change siC vs siK'),ylab=expression('-Log'[10]*' P-values'))
 p.ix= x$log2FoldChange>1 & x$padj<0.05
Upreg=length(which( p.ix))
 #points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="goldenrod4", pch = 16)
 p.ix= x$log2FoldChange<(-1) & x$padj<0.05
Dwreg=length(which( p.ix))
 #points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="darkblue", pch = 16)
 abline(v=1, col ='grey');abline(v=(-1), col ='grey');
abline(h=-log10(.05), col ='grey')
legend("topright",legend=Upreg, bty="n",cex=2,col="goldenrod4") 
legend("topleft",legend=Dwreg, bty="n",cex=2,col="darkblue") 
#dev.off()

#### TIP60 itself

design<-data.frame(experiment=colnames(countData[,c(3,4,7,8)]), batch = c("r1","r1","r2","r2"),
                                            treatment = c("siC","siK","siC","siK") )


dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(3,4,7,8)], colData = design, design = ~ batch + treatment)
dLRT <- DESeq(dLRT, test="LRT", full=  ~ batch + treatment, reduced=~ batch)
dDif_res <- results(dLRT,contrast=c("treatment","siC","siK"))





#### LPCX itself
"/home/rtm/SJlab/nicole/r1_bam_merged/LPCX-siC.bam",
"/home/rtm/SJlab/nicole/r1_bam_merged/LPCX-siK.bam",
"/home/rtm/SJlab/nicole/r1_bam_merged/TIP60-siC.bam",
"/home/rtm/SJlab/nicole/r1_bam_merged/TIP60-siK.bam",
"/home/rtm/SJlab/nicole/bgi/bam/LPCX-siC_Aligned.sortedByCoord.out.bam",
"/home/rtm/SJlab/nicole/bgi/bam/LPCX-siK_Aligned.sortedByCoord.out.bam",
"/home/rtm/SJlab/nicole/bgi/bam/TIP60-siC_Aligned.sortedByCoord.out.bam",
"/home/rtm/SJlab/nicole/bgi/bam/TIP60-siK_Aligned.sortedByCoord.out.bam"


design<-data.frame(experiment=colnames(countData[,c(1,3,5,7)]), batch = c("r1","r1","r2","r2"),
                                            vector = c("LPCX_siC","TIP60_siC","LPCX_siC","TIP60_siC") )


dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(1,3,5,7)], colData = design, design = ~ batch + vector)
dLRT <- DESeq(dLRT, test="LRT",full=~batch+vector, reduced=~batch)
dDif_res <- results(dLRT,contrast=c("vector","LPCX_siC","TIP60_siC"))


x=dDif_res
smoothScatter(x$log2FoldChange,-log10(x$padj),xlab=expression('Log'[2]*' Fold Change LPCX siC vs TIP60 siC '),ylab=expression('-Log'[10]*' P-values'),nrpoints=0)
 p.ix= x$log2FoldChange>1 & x$padj<0.05
Upreg=length(which( p.ix))
 #points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="goldenrod4", pch = 16)
 p.ix= x$log2FoldChange<(-1) & x$padj<0.05
Dwreg=length(which( p.ix))
 #points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="darkblue", pch = 16)
 abline(v=1, col ='grey');abline(v=(-1), col ='grey');
abline(h=-log10(.05), col ='grey')
legend("topright",legend=Upreg, bty="n",cex=2,col="goldenrod4") 
legend("topleft",legend=Dwreg, bty="n",cex=2,col="darkblue") 

#####################


design<-data.frame(experiment=colnames(countData[,c(1,3,5,7)]), batch = c("r1","r1","r2","r2"),
                                            vector = c("LPCX_siC","TIP60_siC","LPCX_siC","TIP60_siC") )


dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(1,3,5,7)], colData = design, design = ~ batch + vector)
dLRT <- DESeq(dLRT, test="LRT",full=~batch+vector, reduced=~batch)
dDif_res <- results(dLRT,contrast=c("vector","LPCX_siC","TIP60_siC"))
x=dDif_res


####
design<-data.frame(experiment=colnames(countData[,c(3,4,7,8)]), batch = c("r1","r1","r2","r2"),
                                            treatment = c("TIP60_siC","TIP60_siK","TIP60_siC","TIP60_siK") )

dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(3,4,7,8)], colData = design, design = ~ batch + treatment)
dLRT <- DESeq(dLRT, test="LRT",full=~batch+treatment, reduced=~batch)
dDif_res <- results(dLRT,contrast=c("treatment","TIP60_siK","TIP60_siC"))


x=dDif_res

zx=(x[which(abs(x$log2FoldChange)>.5 & x$padj<0.1),])
zx=cbind(rownames(zx),zx$log2FoldChange,zx$padj)

smoothScatter(x$log2FoldChange,-log10(x$padj),xlab=expression('Log'[2]*' Fold Change TIP60 siK vs TIP60 siC '),ylab=expression('-Log'[10]*' P-values'),nrpoints=0)
 p.ix= x$log2FoldChange>1 & x$padj<0.05
Upreg=length(which( p.ix))
 #points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="goldenrod4", pch = 16)
 p.ix= x$log2FoldChange<(-1) & x$padj<0.05
Dwreg=length(which( p.ix))
 #points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="darkblue", pch = 16)
 abline(v=1, col ='grey');abline(v=(-1), col ='grey');
abline(h=-log10(.05), col ='grey')
legend("topright",legend=Upreg, bty="n",cex=2,col="goldenrod4") 
legend("topleft",legend=Dwreg, bty="n",cex=2,col="darkblue") 
x[grep("KAT5",rownames(x)),]


#############################
# CLUSTERING


design<-data.frame(experiment=colnames(countData), batch = c("r1","r1","r1","r1","r2","r2","r2","r2"),
                                            vector = c("LPCX","LPCX","TIP60","TIP60", "LPCX","LPCX","TIP60","TIP60"),
                                            treatment = c("siC","siK","siC","siK","siC","siK","siC","siK") )


dLRT <- DESeqDataSetFromMatrix(countData = countData, colData = design, design = ~ batch + vector + treatment)
dLRT <- DESeq(dLRT, test="LRT", reduced=~1)
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
dLRT_res <- results(dLRT)
x=dDif_res
VST=assay(dLRT_vsd)

#subset A1
A1_DE<-VST[which(x$padj<0.05),]
  
  ## library(Mfuzz)
library(Mfuzz)
wt<-new("ExpressionSet", exprs=A1_DE)
cbind(A1_DE[,1],A1_DE[,5])
wt.s<-standardise(wt)


##########################################
# set the custom distance and clustering functions
hclustfunc <- function(x) hclust(x, method="complete")
distfunc <- function(x) dist(x, method="euclidean")

# perform clustering on rows and columns (genes and samples)
cl.row <- hclustfunc(distfunc(A1_DE))
cl.col <- hclustfunc(distfunc(t(A1_DE)))

# Set cluster numbers; i.e. k=6 (rows/genes) k=4 (columns/samples)
gr.row <- cutree(cl.row, 6)
gr.col <- cutree(cl.col, 4)

# Select the colors for the side bars
library(RColorBrewer)
col1 <- brewer.pal(6, "Set1")
col2 <- brewer.pal(4, "Pastel1")
#But you can also choose your own color vector, just make sure you have a color for each cluster for example:
# col1 <- c("red","green","black","blue","orange","yellow")
# col2 <- c("darkred","darkblue","darkgreen","black")

# heatmap
library(gplots)
hmcol=bluered(65)
heatmap.2(as.matrix(A1_DE), key=TRUE, density.info="none", trace ="none", col=hmcol,cex=0.5)
  
#

data<-featureCounts(c(
"/home/rtm/SJlab/nicole/r1_bam_merged/LPCX-siC.bam",
"/home/rtm/SJlab/nicole/r1_bam_merged/LPCX-siK.bam",
"/home/rtm/SJlab/nicole/r1_bam_merged/TIP60-siC.bam",
"/home/rtm/SJlab/nicole/r1_bam_merged/TIP60-siK.bam",
"/home/rtm/SJlab/nicole/bgi/bam/LPCX-siC_Aligned.sortedByCoord.out.bam",
"/home/rtm/SJlab/nicole/bgi/bam/LPCX-siK_Aligned.sortedByCoord.out.bam",
"/home/rtm/SJlab/nicole/bgi/bam/TIP60-siC_Aligned.sortedByCoord.out.bam",
"/home/rtm/SJlab/nicole/bgi/bam/TIP60-siK_Aligned.sortedByCoord.out.bam",
"bam/LPCX-siC_L7_Aligned.out.bam",
"bam/LPCX-siC_L4_Aligned.out.bam",
"bam/LPCX-siK_L7_Aligned.out.bam",
"bam/LPCX-siK_L4_Aligned.out.bam",
"bam/TIP60-siC_L7_Aligned.out.bam",
"bam/TIP60-siC_L4_Aligned.out.bam",
"bam/TIP60-siK_L7_Aligned.out.bam",
"bam/TIP60-siK_L4_Aligned.out.bam"
),
annot.ext="/home/rtm/resources/hg19_genes.gtf",
isGTFAnnotationFile=TRUE,
minMQS=10,
strandSpecific=2,
isPairedEnd=TRUE,
#PE_orientation="rf",
autosort=TRUE,
nthreads=15,
GTF.attrType="gene_name"
)


colnames(data[[1]])<-c("r1_LPCX_siC","r1_LPCX_siK","r1_TIP60_siC","r1_TIP60_siK",
                       "r2_LPCX_siC","r2_LPCX_siK","r2_TIP60_siC","r2_TIP60_siK",
                       "LPCX-siC_L7","LPCX-siC_L4","LPCX-siK_L7","LPCX-siK_L4",
                       "TIP60-siC_L7","TIP60-siC_L4","TIP60-siK_L7","TIP60-siK_L4")
countData<-data[[1]]

  
colnames(countData)<-c("r1_LPCX_siC","r1_LPCX_siK","r1_TIP60_siC","r1_TIP60_siK",
                       "r2_LPCX_siC","r2_LPCX_siK","r2_TIP60_siC","r2_TIP60_siK",
                       "LPCX-siC_L7","LPCX-siC_L4","LPCX-siK_L7","LPCX-siK_L4",
                       "TIP60-siC_L7","TIP60-siC_L4","TIP60-siK_L7","TIP60-siK_L4")
  
design<-data.frame(experiment=colnames(countData), batch = c("r1","r1","r1","r1","r2","r2","r2","r2","h","h","h","h","h","h","h","h",),
                                            vector = c("LPCX","LPCX","TIP60","TIP60", "LPCX","LPCX","TIP60","TIP60","LPCX","LPCX","LPCX","LPCX","TIP60","TIP60","TIP60","TIP60",),
                                            treatment = c("siC","siK","siC","siK","siC","siK","siC","siK","siC","siC","siC","siC","siK","siK","siK","siK") )


dLRT <- DESeqDataSetFromMatrix(countData = countData, colData = design, design = ~ batch + vector + treatment)
dLRT <- DESeq(dLRT, test="LRT", reduced=~1)
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
dLRT_res <- results(dLRT) 
  
  
# 3D PCA
  pc <- princomp(dLRT_vsd, cor=TRUE, scores=TRUE)
  library(rgl)
plot3d(pc$scores[,1:3], col=iris$Species)
  
  
 #
   pca <- prcomp(t(assay(dLRT_vsd)))
   percentVar <- pca$sdev^2 / sum( pca$sdev^2 )
  colnames(pca$x)[1]=paste(colnames(pca$x)[1]," ",round(percentVar*100)[1],"%",sep="" )
  colnames(pca$x)[2]=paste(colnames(pca$x)[2]," ",round(percentVar*100)[2],"%",sep="" )
  colnames(pca$x)[3]=paste(colnames(pca$x)[3]," ",round(percentVar*100)[3],"%",sep="" )
  
  plot3d(pca$x[,1:3])
text3d(pca$x[,1:3],text=rownames(pca$x))
  
  ##################
  
r1=countData[,1]-countData[,3]
r2=countData[,5]-countData[,7]
