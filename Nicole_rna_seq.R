library(Rsubread)
library(DESeq2)

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
