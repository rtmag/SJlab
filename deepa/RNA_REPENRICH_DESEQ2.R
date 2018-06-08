# DESEQ2 

library('DESeq2')
library(gplots)
library(factoextra)
library(RColorBrewer)
options(scipen=999)

#' Build a counts table
counts <- data.frame(
  row.names = siC_r1[,1],  
  siC_r1 = siC_r1[,4], siC_r2 = siC_r2[,4], 
  siK_r1 = siK_r1[,4], siK_r2 = siK_r2[,4], 
  dmso_r1 = dmso_r1[,4], dmso_r2 = dmso_r2[,4],
  jq1_r1 = jq1_r1[,4], jq1_r2 = jq1_r2[,4]
)

