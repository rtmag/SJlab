library(Rsubread)
library(DESeq2)
library(graphics)
############# Feature Count; Meta-Gene by exons #############


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

counts=read.csv("r1r2_counts.csv",row.names=1)
dat=(cbind(data,data2[[1]]))
colnames(dat)<-c("r1_LPCX_siC","r1_LPCX_siK","r1_TIP60_siC","r1_TIP60_siK",
"r2_LPCX_siC","r2_LPCX_siK","r2_TIP60_siC","r2_TIP60_siK","NY_siK","NY_siC")




countData<-dat[,c(1:8,10,9)]
colnames(countData)<-c("r1_LPCX_siC","r1_LPCX_siK","r1_TIP60_siC","r1_TIP60_siK",
"r2_LPCX_siC","r2_LPCX_siK","r2_TIP60_siC","r2_TIP60_siK","NY_siC","NY_siK")


design<-data.frame(experiment=colnames(countData)[c(1,2,5,6,9,10)], batch = c("r1","r1","r2","r2","NY","NY"),
                                            treatment = c("siC","siK","siC","siK","siC","siK") )


dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(1,2,5,6,9,10)], colData = design, design = ~ ba + treatment)
dLRT <- DESeq(dLRT, test="LRT", reduced=~1)
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
dLRT_res <- results(dLRT)

plotPCA(dLRT_vsd,ntop=30000,intgroup=c("batch","treatment","vector"))
