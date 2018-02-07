library(Rsubread)
options(scipen=999)

data<-featureCounts(c(
"/home/roberto/deepa/novogene/STAR/HCT116_siC_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/novogene/STAR/HCT116_siC_DMSO_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/novogene/STAR/HCT116_siC_JQ1_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/novogene/STAR/HCT116_siIRF7_DMSO_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/novogene/STAR/HCT116_siIRF7_JQ1_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/novogene/STAR/HCT116_siK_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/novogene/STAR/HCT_DMSO_HWN2YCCXX_L2_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/novogene/STAR/HCT_JQ1_HWN2YCCXX_L5_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/novogene/STAR/HCT_siControl_HWN2YCCXX_L5_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/novogene/STAR/HCT_siK_HVNYLCCXX_L2_Aligned.sortedByCoord.out.bam"
),
annot.ext="/home/roberto/references/gencode.v26.annotation.gtf",
isGTFAnnotationFile=TRUE,
minMQS=10,
strandSpecific=0,
isPairedEnd=TRUE,
#PE_orientation="rf",
autosort=TRUE,
nthreads=15,
GTF.attrType="gene_name"
)

dat=data[[1]]
colnames(dat)<-gsub("X.home.roberto.deepa.novogene.STAR.","",colnames(dat))
colnames(dat)<-gsub("_Aligned.sortedByCoord.out.bam","",colnames(dat))
saveRDS(dat,"novogene_counts.rds")

###
countData=readRDS("novogene_counts.rds")
library(Rsubread)
options(scipen=999)
library(DESeq2)
####

pdf("interesting_genes.pdf")
x=assay(dLRT_vsd)[grep("ATRX|suv39|trim28",rownames(assay(dLRT_vsd)),perl=T,ignore.case=T),]
barplot(t(x),beside=T,col=c("darkseagreen1","indianred1","darkseagreen4","indianred4"),border=NA,ylab="Log2 Normalized read counts")
legend("topright",col=c("darkseagreen1","indianred1","darkseagreen4","indianred4"),legend=c("r2_siC","r2_siK","r1_siC","r1_siK"),bty="n",pch=15)
 par(mar=c(5.1, 7, 4.1, 2.1))
x=dDif_res[grep("ATRX|suv39|trim28",rownames(dDif_res),perl=T,ignore.case=T),2]
fdr=paste("q-val=",round(dDif_res[,6],2)[grep("ATRX|suv39|trim28",rownames(dDif_res),perl=T,ignore.case=T)],sep="")
names(x)=paste(rownames(dDif_res)[grep("ATRX|suv39|trim28",rownames(dDif_res),perl=T,ignore.case=T)],fdr,sep="\n")
barplot(x,ylim=c(-1,2),border=NA,col=c("lightblue4","indianred4","lightblue4","lightblue4"),ylab="log2 Fold Change (siC vs siK)\n\n\nHigher expression in siK                                              Higher expression in siC")
abline(h=0)
dev.off()
####

design<-data.frame(experiment=colnames(countData[,c(1,6,9,10)]), batch = c("r1","r1","r2","r2"),
                                            condition = c("siC","siK", "siC","siK") )

dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(1,6,9,10)], colData = design, design = ~ batch + condition )
dLRT <- DESeq(dLRT, test="LRT",full= ~ batch + condition , reduced=~ batch )
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
dDif_res <- results(dLRT,contrast=c("condition","siC","siK"))

export=dDif_res[which(dDif_res$padj<0.05 & abs(dDif_res$log2FoldChange)>1),]
write.csv(dDif_res,"siC_siK_DEG_revised_all.csv")
write.table(rownames(export),"siC_siK_export.txt",quote=F,row.names=F,col.names=F)
write.table(rownames(dDif_res),"background.txt",quote=F,row.names=F,col.names=F)


####

design<-data.frame(experiment=colnames(countData[,c(2,3,7,8)]), batch = c("r2","r2","r1","r1"),
                                            condition = c("DMSO","JQ1", "DMSO","JQ1") )

dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(2,3,7,8)], colData = design, design = ~ batch + condition )
dLRT <- DESeq(dLRT, test="LRT",full= ~ batch + condition , reduced=~ batch )
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
dDif_res <- results(dLRT,contrast=c("condition","DMSO","JQ1"))

export=dDif_res[which(dDif_res$padj<0.05 & abs(dDif_res$log2FoldChange)>1),]
write.csv(dDif_res,"DMSO_JQ1_DEG_revised_all.csv")
write.table(rownames(export),"DMSO_JQ1_export.txt",quote=F,row.names=F,col.names=F)
##
# siC_JQ1 siIRF7_JQ1

write.csv(dDif_res,"DMSO_JQ1_DEG_revised_all.csv")

dds <- DESeqDataSetFromMatrix(
       countData = countData[,c(3,5)],
       colData = data.frame(group=c("siC_JQ1","siIRF7_JQ1")),
       design = ~ group)
rld <- rlogTransformation( dds )
res1 <- data.frame(rLogFC = assay(rld)[,1] - assay(rld)[,2],siC_JQ1=countData[,3],siIRF7_JQ1=countData[,5] )
write.csv(res1,"5_siC_JQ1_vs_siIRF7_JQ1_DEG_revised_all.csv")

integron=cbind(res1[abs(res1[,1])>.5,][rownames(res1[abs(res1[,1])>.5,]) %in% rownames(export),],export[rownames(export) %in% rownames(res1[abs(res1[,1])>.5,]),])
write.csv(integron,"6_Intersection_siC_JQ1_vs_siIRF7_JQ1_AND_DMSO_JQ1.csv")


##

countData=readRDS("novogene_counts.rds")
library(Rsubread)
options(scipen=999)
library(DESeq2)
library(graphics)


design<-data.frame(experiment=colnames(countData[,c(1,6,9,10)]), batch = c("r1","r1","r2","r2"),
                                            condition = c("siC","siK", "siC","siK") )

dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(1,6,9,10)], colData = design, design = ~ batch + condition )
dLRT <- DESeq(dLRT, test="LRT",full= ~ batch + condition , reduced=~ batch )
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
dDif_res <- results(dLRT,contrast=c("condition","siC","siK"))

export=dDif_res[which(dDif_res$padj<0.05 & abs(dDif_res$log2FoldChange)>1),]

postscript("volcano_plot.ps")
smoothScatter(dDif_res$log2FoldChange,-log10(dDif_res$padj),nrpoints=0,xlab="Log2 Fold Change (siControl/siTIP60)", ylab="-log10 P-adjusted values")
abline(v=-1,lty = 2,col="grey")
abline(v=1,lty = 2,col="grey")
abline(h=-log10(0.01),lty = 2,col="grey")
x=dDif_res[which(rownames(dDif_res)=="IRF7"),]
points(x$log2FoldChange,-log10(x$padj),pch=20,col="red")
text(x$log2FoldChange,-log10(x$padj)+2,label="IRF7",cex=.7)
x=dDif_res[which(rownames(dDif_res)=="SUV39H1"),]
points(x$log2FoldChange,-log10(x$padj),pch=20,col="red")
text(x$log2FoldChange+.5,-log10(x$padj)+2,label="SUV39H1",cex=.7)
x=dDif_res[which(rownames(dDif_res)=="SETDB1"),]
points(x$log2FoldChange,-log10(x$padj),pch=20,col="red")
text(x$log2FoldChange,-log10(x$padj)+2,label="SETDB1",cex=.7)
dev.off()

pdf("volcano_plot.pdf")
smoothScatter(dDif_res$log2FoldChange,-log10(dDif_res$padj),nrpoints=0,xlab="Log2 Fold Change (siControl/siTIP60)", ylab="-log10 P-adjusted values")
abline(v=-1,lty = 2,col="grey")
abline(v=1,lty = 2,col="grey")
abline(h=-log10(0.01),lty = 2,col="grey")
x=dDif_res[which(rownames(dDif_res)=="IRF7"),]
points(x$log2FoldChange,-log10(x$padj),pch=20,col="red")
text(x$log2FoldChange,-log10(x$padj)+2,label="IRF7",cex=.7)
x=dDif_res[which(rownames(dDif_res)=="SUV39H1"),]
points(x$log2FoldChange,-log10(x$padj),pch=20,col="red")
text(x$log2FoldChange+.5,-log10(x$padj)+2,label="SUV39H1",cex=.7)
x=dDif_res[which(rownames(dDif_res)=="SETDB1"),]
points(x$log2FoldChange,-log10(x$padj),pch=20,col="red")
text(x$log2FoldChange,-log10(x$padj)+2,label="SETDB1",cex=.7)
dev.off()


###
