
countData=readRDS("/home/roberto/deepa/novogene/deseq2/novogene_counts.rds")
library(Rsubread)
options(scipen=999)
library(DESeq2)
library(graphics)


design<-data.frame(experiment=colnames(countData[,c(1,6,9,10)]), batch = c("r1","r1","r2","r2"),
                                            condition = c("siC","siK", "siC","siK") )

dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(1,6,9,10)], colData = design, design = ~ batch + condition )
dLRT <- DESeq(dLRT, test="LRT",full= ~ batch + condition , reduced=~ batch )
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
dDif_res <- results(dLRT,contrast=c("condition","siC","siK"))

saveRDS(dDif_res,"deseq2_siC_vs_siK.rds")
##################################################################################################################
dDif_res = readRDS('deseq2_siC_vs_siK.rds')
genes_noNA = dDif_res[!is.na(dDif_res$log2FoldChange),]

hg38=read.table("~/references/hg38_tss.bed",sep="\t",stringsAsFactors=F)

gene_symbol=rownames(genes_noNA) # genes with no NAs in counts
gene_tss = hg38[(which(hg38[,4] %in% gene_symbol )),]
gene_tss = gene_tss[!duplicated(gene_tss[,4]),]
gene_tss_4kb=data.frame(gene_tss[,1],gene_tss[,2]-2000,gene_tss[,3]+2000,gene_tss[,4:6])
gene_tss_4kb[which(gene_tss_4kb[,2]<1),2]=1
write.table(gene_tss_4kb,"gene_tss_4kb.bed",sep="\t",quote=F,col.names=F,row.names=F)
###

genes_noNA = dDif_res[!is.na(dDif_res$log2FoldChange),]
hg38=read.table("~/references/hg38_tss.bed",sep="\t",stringsAsFactors=F)

gene_symbol=rownames(genes_noNA) # genes with no NAs in counts
gene_tss = hg38[(which(hg38[,4] %in% gene_symbol )),]
gene_tss = gene_tss[!duplicated(gene_tss[,4]),]
gene_tss_4kb=data.frame(gene_tss[,1],gene_tss[,2]-500,gene_tss[,3]+500,gene_tss[,4:6])
gene_tss_4kb[which(gene_tss_4kb[,2]<1),2]=1
write.table(gene_tss_4kb,"gene_tss_1kb.bed",sep="\t",quote=F,col.names=F,row.names=F)
#######################################################################################################


#
bed_to_granges <- function(file){
   df <- read.table(file,
                    header=F,
                    stringsAsFactors=F)
 
   if(length(df) > 6){
      df <- df[,-c(7:length(df))]
   }
 
   if(length(df)<3){
      stop("File has less than 3 columns")
   }
 
   header <- c('chr','start','end','id','score','strand')
   names(df) <- header[1:length(names(df))]
 
   if('strand' %in% colnames(df)){
      df$strand <- gsub(pattern="[^+-]+", replacement = '*', x = df$strand)
   }
 
   library("GenomicRanges")
 
   if(length(df)==3){
      gr <- with(df, GRanges(chr, IRanges(start, end)))
   } else if (length(df)==4){
      gr <- with(df, GRanges(chr, IRanges(start, end), id=id))
   } else if (length(df)==5){
      gr <- with(df, GRanges(chr, IRanges(start, end), id=id, score=score))
   } else if (length(df)==6){
      gr <- with(df, GRanges(chr, IRanges(start, end), id=id, score=score, strand=strand))
   }
   return(gr)
}
#

require(csaw)
require(DESeq2)


blacklist=bed_to_granges("/home/roberto/references/hg38_blacklist.bed")
param <- readParam(minq=10,discard=blacklist,pe="both")
bam.files <- c(
"/home/roberto/deepa/h3k9me3/bam/C_H3_rmdup.bam",
"/home/roberto/deepa/h3k9me3/bam/K_H3_rmdup.bam",
"/home/roberto/deepa/h3k9me3/bam/C_k9me3_rmdup.bam",
"/home/roberto/deepa/h3k9me3/bam/K_k9me3_rmdup.bam"
)

binned <- windowCounts(bam.files, bin=TRUE, width=10000, param=param)

normfacs <- normOffsets(binned)
saveRDS(normfacs,"normfacs.rds")

##
regions=bed_to_granges("gene_tss_4kb.bed")
counts <- regionCounts(bam.files, regions, ext=NA, param=param)
countData=assay(counts)
colnames(countData)=c("C_H3","K_H3","C_k9me3","K_k9me3")

saveRDS(countData,"h3_h3k9me3_counts_gene_tss_4kb.rds")

colData <- data.frame(group=colnames(countData))
dds <- DESeqDataSetFromMatrix(
       countData = countData,
       colData = colData,
       design = ~ group)
dds <- estimateSizeFactors(dds)
sizeFactors(dds) <- normfacs

saveRDS(dds,"dds.rds")

dds_vsd = varianceStabilizingTransformation(dds,fitType='local')
vsd = assay(dds_vsd)

h3k9me3_H3_normalized_log2fc = (vsd[,3]/vsd[,1])-(vsd[,4]/vsd[,2])

names(h3k9me3_H3_normalized_log2fc) = regions$id

saveRDS(h3k9me3_H3_normalized_log2fc,"h3k9me3_H3_normalized_log2fc_siC_vs_siK.rds")

rownames(vsd) = regions$id
saveRDS(vsd, "H3_H3K9me3_vsd.rds")
###


regions=bed_to_granges("gene_tss_1kb.bed")
counts <- regionCounts(bam.files, regions, ext=NA, param=param)
countData=assay(counts)
colnames(countData)=c("C_H3","K_H3","C_k9me3","K_k9me3")

colData <- data.frame(group=colnames(countData))
dds <- DESeqDataSetFromMatrix(
       countData = countData,
       colData = colData,
       design = ~ group)
dds <- estimateSizeFactors(dds)
sizeFactors(dds) <- normfacs

dds_vsd = varianceStabilizingTransformation(dds,fitType='local')
vsd = assay(dds_vsd)
rownames(vsd) = regions$id
saveRDS(vsd, "H3_H3K9me3_tss1kb_vsd.rds")


##################################################################

k9me3 = readRDS("h3k9me3_H3_normalized_log2fc_siC_vs_siK.rds")
k9me3 = k9me3[order(names(k9me3))]

rna = readRDS("deseq2_siC_vs_siK.rds")
rna = rna[rownames(rna) %in% names(k9me3),]
rna = rna[!duplicated(rownames(rna)),]
rna = rna[order(rownames(rna)),]

library(graphics)
pdf("rna_k9me3_h3normalized_byDivision_tss4kb_scatterplot.pdf")
smoothScatter(rna$log2FoldChange, k9me3,
             xlab=expression('RNA-Seq Log'[2]*' Fold Change ( siControl / siTIP60 )'),
             ylab=expression('H3K9me3/H3 Log'[2]*' Fold Change TSS-4kb ( siControl / siTIP60 )'))
abline(v=0)
abline(h=0)
dev.off()

vsd = readRDS("H3_H3K9me3_vsd.rds")
k9me3 = vsd[,3]-vsd[,4]

k9me3 = k9me3[order(names(k9me3))]
pdf("rna_k9me3_tss4kb_scatterplot.pdf")
smoothScatter(rna$log2FoldChange,k9me3,
             xlab=expression('RNA-Seq Log'[2]*' Fold Change ( siControl / siTIP60 )'),
             ylab=expression('H3K9me3/H3 Log'[2]*' Fold Change TSS-4kb ( siControl / siTIP60 )'))
abline(v=0)
abline(h=0)
dev.off()


k9me3 = (vsd[,3]-vsd[,1])-(vsd[,4]-vsd[,2])
k9me3 = k9me3[order(names(k9me3))]
pdf("rna_k9me3_h3normalized_bysubstraction_tss4kb_scatterplot.pdf")
smoothScatter(rna$log2FoldChange,k9me3,
             xlab=expression('RNA-Seq Log'[2]*' Fold Change ( siControl / siTIP60 )'),
             ylab=expression('H3K9me3/H3 Log'[2]*' Fold Change TSS-4kb ( siControl / siTIP60 )'))
abline(v=0)
abline(h=0)
dev.off()
#######################################

## TSS 1KB
vsd = readRDS("H3_H3K9me3_tss1kb_vsd.rds")

k9me3 = (vsd[,3]/vsd[,1])-(vsd[,4]/vsd[,2])
k9me3 = k9me3[order(names(k9me3))]

rna = readRDS("deseq2_siC_vs_siK.rds")
rna = rna[rownames(rna) %in% names(k9me3),]
rna = rna[!duplicated(rownames(rna)),]
rna = rna[order(rownames(rna)),]

library(graphics)
pdf("rna_k9me3_h3normalized_byDivision_tss1kb_scatterplot.pdf")
smoothScatter(rna$log2FoldChange, k9me3,
             xlab=expression('RNA-Seq Log'[2]*' Fold Change ( siControl / siTIP60 )'),
             ylab=expression('H3K9me3/H3 Log'[2]*' Fold Change TSS-1kb ( siControl / siTIP60 )'))
abline(v=0)
abline(h=0)
dev.off()

k9me3 = vsd[,3]-vsd[,4]

k9me3 = k9me3[order(names(k9me3))]
pdf("rna_k9me3_tss1kb_scatterplot.pdf")
smoothScatter(rna$log2FoldChange,k9me3,
             xlab=expression('RNA-Seq Log'[2]*' Fold Change ( siControl / siTIP60 )'),
             ylab=expression('H3K9me3/H3 Log'[2]*' Fold Change TSS-1kb ( siControl / siTIP60 )'))
abline(v=0)
abline(h=0)
dev.off()


k9me3 = (vsd[,3]-vsd[,1])-(vsd[,4]-vsd[,2])
k9me3 = k9me3[order(names(k9me3))]
pdf("rna_k9me3_h3normalized_bysubstraction_tss1kb_scatterplot.pdf")
smoothScatter(rna$log2FoldChange,k9me3,
             xlab=expression('RNA-Seq Log'[2]*' Fold Change ( siControl / siTIP60 )'),
             ylab=expression('H3K9me3/H3 Log'[2]*' Fold Change TSS-1kb ( siControl / siTIP60 )'))
abline(v=0)
abline(h=0)
dev.off()
