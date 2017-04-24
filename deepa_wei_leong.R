
library(Rsubread)
library(DESeq2)
library(graphics)

####



data<-featureCounts(c(
"/home/roberto/deepa/tam_wai_leong/bam/P019WKF_normal_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/tam_wai_leong/bam/P1446_normal_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/tam_wai_leong/bam/P019WKF_tumor_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/tam_wai_leong/bam/P1446_tumor_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/tam_wai_leong/bam/P1456_tumor_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/tam_wai_leong/bam/P1463_tumor_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/tam_wai_leong/bam/P360_tumor_Aligned.sortedByCoord.out.bam",
"/home/roberto/deepa/tam_wai_leong/bam/P520_tumor_Aligned.sortedByCoord.out.bam"
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
colnames(dat)<-gsub("X.home.roberto.deepa.tam_wai_leong.bam.","",colnames(dat))
colnames(dat)<-gsub("_Aligned.sortedByCoord.out.bam","",colnames(dat))
saveRDS(dat,"wai_leong_counts.rds")

countData=dat

design<-data.frame(experiment=colnames(countData), status = c("normal","normal","tumor","tumor","tumor","tumor","tumor","tumor","tumor") )


dLRT <- DESeqDataSetFromMatrix(countData = countData, colData = design, design = ~ status)
dLRT <- DESeq(dLRT, test="LRT", reduced=~1)
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
dLRT_res <- results(dLRT)

plotPCA(dLRT_vsd,ntop=30000,intgroup=c("batch","treatment","vector"))
