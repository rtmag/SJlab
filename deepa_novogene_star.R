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
countData=dat
design<-data.frame(experiment=colnames(countData[,c(1,6,9,10)]), batch = c("r1","r1","r2","r2"),
                                            condition = c("siC","siK", "siC","siK") )

dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(1,6,9,10)], colData = design, design = ~ batch + condition )
dLRT <- DESeq(dLRT, test="LRT",full= ~ batch + condition , reduced=~ batch )
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
dDif_res <- results(dLRT,contrast=c("condition","siC","siK"))

export=dDif_res[which(dDif_res$padj<0.05 & abs(dDif_res$log2FoldChange)>.5),]
write.csv(export,"LPCX-siC_TIP60-siC_r1r2_DEG_revised_log2FC-0.5_padj-0.05.csv")
write.csv(dDif_res,"LPCX-siC_TIP60-siC_r1r2_DEG_revised_all.csv")

###
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
