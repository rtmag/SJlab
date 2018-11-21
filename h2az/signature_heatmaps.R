############################################################################################################
options(scipen=999)
library(gplots)
library(factoextra)
library(RColorBrewer)
library(DESeq2)

vsd = readRDS("h2az_vsd.rds")

pdf("e2f_targets_siginificantChange.pdf")
sig_vsd = vsd[(rownames(vsd) %in% gmt[,1]) & ((abs(dLRT_res$log2FoldChange)>1 & dLRT_res$padj<0.05)),]
sig_vsd = sig_vsd[complete.cases(sig_vsd),]
sig_vsd = sig_vsd[complete.cases(sig_vsd),]
sig_vsd_tmp = sig_vsd
for(ix in 1:dim(sig_vsd)[1]){
  sig_vsd_tmp[ix,1] = sig_vsd[ix,1]-mean(sig_vsd[ix,c(1,4)])
  sig_vsd_tmp[ix,4] = sig_vsd[ix,4]-mean(sig_vsd[ix,c(1,4)])
  sig_vsd_tmp[ix,2] = sig_vsd[ix,2]-mean(sig_vsd[ix,c(2,5)])
  sig_vsd_tmp[ix,5] = sig_vsd[ix,5]-mean(sig_vsd[ix,c(2,5)])
  sig_vsd_tmp[ix,3] = sig_vsd[ix,3]-mean(sig_vsd[ix,c(3,6)])
  sig_vsd_tmp[ix,6] = sig_vsd[ix,6]-mean(sig_vsd[ix,c(3,6)])
  }
sig_vsd = sig_vsd_tmp

  colnames(sig_vsd) = c("shrh_siC","tham_siC","zhou_siC",
                "shrh_siK","tham_siK","zhou_siK")
  colors <- rev(colorRampPalette( (brewer.pal(9, "RdBu")) )(20))
  heatmap.2(sig_vsd,col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="E2F Target Genes",key.title="Gene expression",cexCol=.65,cexRow=.6)
dev.off()
