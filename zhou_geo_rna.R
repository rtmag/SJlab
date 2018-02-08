library(Rsubread)
library(DESeq2)
library(goseq)
library(GO.db)


data<-featureCounts(c(
"10A_siC.bam",
"10A_siT.bam",
"MC.bamAligned.out.bam",
"MT.bamAligned.out.bam"),
annot.ext="/home/rtm/SJlab/zhou/gencode.v19.annotation.gtf_withproteinids",
isGTFAnnotationFile=TRUE,
minMQS=10,
strandSpecific=0,
isPairedEnd=TRUE,
#PE_orientation="rf",
autosort=TRUE,
nthreads=14,
GTF.attrType="gene_name",
allowMultiOverlap=TRUE
)

countData<-data[[1]]

colnames(countData)=c("siC_rep1","siT_rep1","siC_rep2","siT_rep2")

colData <- data.frame(group=c("siC","siT","siC","siT"),batch=c("b1","b1","b2","b2"))

dLRT <- DESeqDataSetFromMatrix(countData = countData, colData = colData, 
                  design = ~ batch + group )
dLRT <- DESeq(dLRT, test="LRT", 
           full= ~ batch + group, 
           reduced= ~ batch )
dLRT_res <- results(dLRT)
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
