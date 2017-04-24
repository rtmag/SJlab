
library(Rsubread)
library(DESeq2)
library(graphics)

####



data<-featureCounts(c(
"/home/rtm/SJlab/nicole/bgi/bam/feb2015_207_Aligned.sortedByCoord.out.bam",
"/home/rtm/SJlab/nicole/bgi/bam/feb2015_208_Aligned.sortedByCoord.out.bam"
),
annot.ext="/home/rtm/resources/hg19_genes.gtf",
isGTFAnnotationFile=TRUE,
minMQS=10,
strandSpecific=0,
isPairedEnd=TRUE,
#PE_orientation="rf",
autosort=TRUE,
nthreads=15,
GTF.attrType="gene_name"
)
