# DESEQ2 

library('DESeq2')
options(scipen=999)

# In the case of a pre-assembled file of the fraction count output do the following:
# counts <- read.csv(file = "counts.csv")

# In the case of seperate outputs, load the RepEnrich results - fraction counts
siC_h3k9me3_novogene <- read.delim('/home/rtm/CSI/sjlab/repenrich/siControl_H3K9me3_novogene_fraction_counts.txt', header=FALSE)
siC_h3k9me3_steph <- read.delim('/home/rtm/CSI/sjlab/repenrich/siControl_H3K9me3_steph_fraction_counts.txt', header=FALSE)
siC_h3_novogene <- read.delim('/home/rtm/CSI/sjlab/repenrich/siControl_H3_novogene_fraction_counts.txt', header=FALSE)
siC_h3_steph <- read.delim('/home/rtm/CSI/sjlab/repenrich/siControl_H3_steph_fraction_counts.txt', header=FALSE)

siK_h3k9me3_novogene <- read.delim('/home/rtm/CSI/sjlab/repenrich/siTIP60_H3K9me3_novogene_fraction_counts.txt', header=FALSE)
siK_h3k9me3_steph <- read.delim('/home/rtm/CSI/sjlab/repenrich/siTIP60_H3K9me3_steph_fraction_counts.txt', header=FALSE)
siK_h3_novogene <- read.delim('/home/rtm/CSI/sjlab/repenrich/siTIP60_H3_novogene_fraction_counts.txt', header=FALSE)
siK_h3_steph <- read.delim('/home/rtm/CSI/sjlab/repenrich/siTIP60_H3_steph_fraction_counts.txt', header=FALSE)

#' Build a counts table
countData <- data.frame(
  row.names = siC_h3k9me3_novogene[,1],  
  siC_h3k9me3_novogene = siC_h3k9me3_novogene[,4], siC_h3k9me3_steph = siC_h3k9me3_steph[,4], 
  siK_h3k9me3_novogene = siK_h3k9me3_novogene[,4], siK_h3k9me3_steph = siK_h3k9me3_steph[,4], 
  siC_h3_novogene = siC_h3_novogene[,4], siC_h3_steph = siC_h3_steph[,4],
  siK_h3_novogene = siK_h3_novogene[,4], siK_h3_steph = siK_h3_steph[,4]
)

design<-data.frame(group=c("siC_h3k9me3_novogene","siC_h3k9me3_steph",
                           "siK_h3k9me3_novogene","siK_h3k9me3_steph",
                           "siC_h3_novogene","siC_h3_steph",
                           "siK_h3_novogene","siK_h3_steph"
                           ) )

designh3k9me3<-data.frame(group=c("siC_h3k9me3_novogene","siC_h3k9me3_steph",
                           "siK_h3k9me3_novogene","siK_h3k9me3_steph"
                           ) )

designh3<-data.frame(group=c("siC_h3_novogene","siC_h3_steph",
                           "siK_h3_novogene","siK_h3_steph"
                           ) )


dLRT <- DESeqDataSetFromMatrix(countData = countData[,5:8], colData = designh3 , design = ~ group )
dLRT <- DESeq(dLRT, test="LRT", reduced=~1)
dLRT_vsd <- varianceStabilizingTransformation(dLRT)
vsd = assay(dLRT_vsd)

pdf("Diagnostic_pca_h3.pdf")
plotPCA(dLRT_vsd,ntop=50000,intgroup=c("group"))
dev.off()
###############################################################################################################
# DESEQ2
design<-data.frame(treatment=c("siC","siC",
                           "siK","siK"
                          ),
                   seq=c("novogene","steph",
                           "novogene","steph"
                          ) )

dds <- DESeqDataSetFromMatrix(countData = countData[,1:4], colData = design, 
                  design = ~ seq + treatment )

dds <- DESeq(dds, test="LRT", 
           full= ~ seq + treatment, 
           reduced= ~ seq )
dds_res <- results(dds,contrast=c("treatment","siC","siK"))
###############################################################################################################
design<-data.frame(treatment=c("siC","siC",
                           "siK","siK"
                          ),
                   seq=c("novogene","steph",
                           "novogene","steph"
                          ) )

dds <- DESeqDataSetFromMatrix(countData = countData[,5:8], colData = design, 
                  design = ~ seq + treatment )

dds <- DESeq(dds, test="LRT", 
           full= ~ seq + treatment, 
           reduced= ~ seq )
dds_res <- results(dds,contrast=c("treatment","siC","siK"))






