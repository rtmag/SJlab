library(Rsubread)
library(DESeq2)

############# Feature Count; Meta-Gene by exons #############
r1=""
r2="/home/rtm/SJlab/nicole/bgi/bam"

data<-featureCounts(c(
"10A_siC.bam",
"10A_siT.bam"),
annot.ext="~/tblab/resources/gencode.v19.annotation.gtf_withproteinids",
isGTFAnnotationFile=TRUE,
minMQS=10,
strandSpecific=0,
isPairedEnd=TRUE,
#PE_orientation="rf",
autosort=TRUE,
nthreads=3,
GTF.attrType="gene_name"
)
