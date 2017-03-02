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

pdf("Volcano_full=batch+vector+treatment_reduced=batch+vector.pdf")
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
dev.off()

#### TIP60 itself

design<-data.frame(experiment=colnames(countData[,c(3,4,7,8)]), batch = c("r1","r1","r2","r2"),
                                            treatment = c("siC","siK","siC","siK") )


dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(3,4,7,8)], colData = design, design = ~ batch + treatment)
dLRT <- DESeq(dLRT, test="LRT", full=  ~ batch + treatment, reduced=~ batch)
dDif_res <- results(dLRT,contrast=c("treatment","siC","siK"))





#### LPCX itself

design<-data.frame(experiment=colnames(countData[,c(1,3,5,7)]), batch = c("r1","r1","r2","r2"),
                                            vector = c("LPCX_siC","TIP60_siC","LPCX_siC","TIP60_siC") )


dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(1,3,5,7)], colData = design, design = ~ batch + vector)
dLRT <- DESeq(dLRT, test="LRT",full=  ~ batch + vector, reduced=~ batch)
dDif_res <- results(dLRT,contrast=c("vector","LPCX_siC","TIP60_siC"))


