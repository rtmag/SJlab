library(Rsubread)

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
                                            condition = c("siC","siC", "siK","siK") )

dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(1,6,9,10)], colData = design, design = ~ batch + condiion )
dLRT <- DESeq(dLRT, test="LRT",full= ~ batch + condition , reduced=~ batch )
dDif_res <- results(dLRT,contrast=c("condition","siC","siK"))

export=dDif_res[which(dDif_res$padj<0.05 & abs(dDif_res$log2FoldChange)>.5),]
write.csv(export,"LPCX-siC_TIP60-siC_r1r2_DEG_revised_log2FC-0.5_padj-0.05.csv")
write.csv(dDif_res,"LPCX-siC_TIP60-siC_r1r2_DEG_revised_all.csv")

###

