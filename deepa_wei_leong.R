
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

#######

x=readRDS("wai_leong_counts.rds")

kat5=which(rownames(x)=="KAT5")
ix=c(which(colnames(x)=="P1446_tumor"),which(colnames(x)=="P1456_tumor"),which(colnames(x)=="P520_tumor"),which(colnames(x)=="P360_tumor"))

x=x[kat5,ix]

P1446=read.table("P1446_tumor_class_fraction_counts.txt")
P1446=P1446[c(which(P1446[,1]=="LINE"),which(P1446[,1]=="LTR"),which(P1446[,1]=="SINE")),]

P1456=read.table("P1456_tumor_class_fraction_counts.txt")
P1456=P1456[c(which(P1456[,1]=="LINE"),which(P1456[,1]=="LTR"),which(P1456[,1]=="SINE")),]

P360=read.table("P360_tumor_class_fraction_counts.txt")
P360=P360[c(which(P360[,1]=="LINE"),which(P360[,1]=="LTR"),which(P360[,1]=="SINE")),]

P520=read.table("P520_tumor_class_fraction_counts.txt")
P520=P520[c(which(P520[,1]=="LINE"),which(P520[,1]=="LTR"),which(P520[,1]=="SINE")),]
##
#1446   1456     520   360
mat=cbind(P1446[,2],P1456[,2],P360[,2],P520[,2])
rownames(mat)=P1446[,1]
colnames(mat)=c("P1446_tumor","P1456_tumor","P520_tumor","P360_tumor")

pdf("leong_pdx_class_kat5.pdf")
par(mfrow=c(1,1))

barplot(mat,beside=T,col=c("darkturquoise","darkolivegreen2","firebrick3"),border=NA,cex.names=.7)
legend("topleft",rownames(mat),fill=c("darkturquoise","darkolivegreen2","firebrick3"),border=NA,bty='n')
    
barplot(x,border=NA,col="burlywood",cex.names=.7)
legend("topleft","KAT5",fill=c("burlywood"),border=NA,bty='n')
dev.off()
