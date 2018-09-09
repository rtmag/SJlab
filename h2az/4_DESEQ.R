
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
