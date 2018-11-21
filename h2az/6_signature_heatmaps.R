############################################################################################################
options(scipen=999)
library(gplots)
library(factoextra)
library(RColorBrewer)
options(bitmapType="cairo")

vsd = readRDS("h2az_vsd.rds")

vsd_centered = vsd
for(ix in 1:dim(vsd)[1]){
  vsd_centered[ix,1] = vsd[ix,1]-mean(vsd[ix,c(1,4)])
  vsd_centered[ix,4] = vsd[ix,4]-mean(vsd[ix,c(1,4)])
  vsd_centered[ix,2] = vsd[ix,2]-mean(vsd[ix,c(2,5)])
  vsd_centered[ix,5] = vsd[ix,5]-mean(vsd[ix,c(2,5)])
  vsd_centered[ix,3] = vsd[ix,3]-mean(vsd[ix,c(3,6)])
  vsd_centered[ix,6] = vsd[ix,6]-mean(vsd[ix,c(3,6)])
  }

data = vsd_centered
############################################################################################################
# Apoptosis RT2 Profiler PCR Array https://www.qiagen.com/ca/shop/pcr/primer-sets/rt2-profiler-pcr-arrays/?catno=PAHS-012Z#geneglobe
DNA_damage_repair = c("ABL1", "CIDEA", "CIDEB", "TP53", "TP73")
extracellular_signal = c("CFLAR", "DAPK1", "TNFRSF25")
pro_apoptotic = c("BAD", "BAK1", "BAX", "BCL10", "BCL2L11", "BID", "BIK", "BNIP3", "BNIP3L", "CASP1", "CASP10", "CASP14", "CASP2",
 "CASP3", "CASP4", "CASP6", "CASP8", "CD27", "CD70", "CYCS", "DFFA", "DIABLO", "FAS", "FASLG", "GADD45A", "HRK", "LTA", "NOD1", 
 "PYCARD", "TNFRSF10A", "TNFRSF9", "TNFSF10", "TNFSF8", "TP53BP2", "TRADD", "TRAF3")

anti_apoptotic = c("AKT1", "BAG1", "BAG3", "BAX", "BCL2", "BCL2A1", "BCL2L1", "BCL2L10", "BCL2L2", "BFAR", "BIRC3", "BIRC5", 
"BIRC6", "BNIP2", "BNIP3", "BNIP3L", "BRAF", "CD27", "CD40LG", "CFLAR", "DAPK1", "FAS", "HRK", "IGF1R", "IL10", "MCL1", "NAIP", 
"NFKB1", "NOL3", "RIPK2", "TNF", "XIAP")

negative_regulation_apoptosis = c("BAG1", "BAG3", "BCL10", "BCL2", "BCL2A1", "BCL2L1", "BCL2L10", "BCL2L2",
 "BFAR", "BIRC2", "BIRC3", "BIRC6", "BNIP2", "BNIP3", "BNIP3L", "BRAF", "CASP3", "CD27", "CD40LG", "CFLAR", 
 "CIDEA", "DAPK1", "DFFA", "FAS", "IGF1R", "MCL1", "NAIP", "NOL3", "TP53", "TP73", "XIAP")
positive_regulation_apoptosis = c("ABL1", "AKT1", "BAD", "BAK1", "BAX", "BCL2L11", "BID", "BIK", "BNIP3", "BNIP3L",
 "CASP1", "CASP10", "CASP14", "CASP2", "CASP4", "CASP6", "CASP8", "CD40", "CD70", "CIDEB", "CRADD", "FADD", "FASLG",
  "HRK", "LTA", "LTBR", "NOD1", "PYCARD", "RIPK2", "TNF", "TNFRSF10A", "TNFRSF10B", "TNFRSF25", "TNFRSF9", "TNFSF10",
  "TNFSF8", "TP53", "TP53BP2", "TRADD", "TRAF2", "TRAF3")

death_domain_receptor = c("CRADD", "DAPK1", "FADD", "TNFRSF10A", "TNFRSF10B", "TNFRSF11B", "TNFRSF1A", "TNFRSF1B", 
"TNFRSF21", "TNFRSF25", "TRADD","TNF")

caspases = c( "CASP1", "CASP10", "CASP14", "CASP2", "CASP3", "CASP4", "CASP5", "CASP6", "CASP7", "CASP8", "CASP9",
 "CFLAR", "CRADD", "PYCARD")
caspase_activation = c("AIFM1", "APAF1", "BAX", "BCL2L10", "CASP1", "CASP9", "NOD1", "PYCARD", "TNFRSF10A", "TNFRSF10B", "TP53")
caspase_inhibition = c("CD27", "XIAP")
############################################################################################################
 colors <- rev(colorRampPalette( (brewer.pal(9, "RdBu")) )(20))

### DNA_damage_repair
pdf("DNA_damage_repair.pdf")
sig_vsd = data[rownames(data) %in% DNA_damage_repair,]
sig_vsd = sig_vsd[apply(sig_vsd,1,sd)!=0,]
  heatmap.2(as.matrix(sig_vsd),col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="",main="DNA Damage and Repair",key.title="Gene expression",cexCol=.65,cexRow=.7)
dev.off()
### extracellular_signal
pdf("extracellular_signal.pdf")
sig_vsd = data[rownames(data) %in% extracellular_signal,]
sig_vsd = sig_vsd[apply(sig_vsd,1,sd)!=0,]
  heatmap.2(as.matrix(sig_vsd),col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="",main="Apoptosis extracellular\nsignal",key.title="Gene expression",cexCol=.65,cexRow=.7)
dev.off()
### pro_apoptotic
pdf("pro_apoptotic.pdf")
sig_vsd = data[rownames(data) %in% pro_apoptotic,]
sig_vsd = sig_vsd[apply(sig_vsd,1,sd)!=0,]
  heatmap.2(as.matrix(sig_vsd),col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="",main="Pro Apoptotic",key.title="Gene expression",cexCol=.65,cexRow=.7)
dev.off()
### DNA_damage_repair
pdf("anti_apoptotic.pdf")
sig_vsd = data[rownames(data) %in% anti_apoptotic,]
sig_vsd = sig_vsd[apply(sig_vsd,1,sd)!=0,]
  heatmap.2(as.matrix(sig_vsd),col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="",main="Anti Apoptotic",key.title="Gene expression",cexCol=.65,cexRow=.7)
dev.off()
### negative_regulation_apoptosis
pdf("negative_regulation_apoptosis.pdf")
sig_vsd = data[rownames(data) %in% negative_regulation_apoptosis,]
sig_vsd = sig_vsd[apply(sig_vsd,1,sd)!=0,]
  heatmap.2(as.matrix(sig_vsd),col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="",main="Negative Regulation Apoptosis",key.title="Gene expression",cexCol=.65,cexRow=.7)
dev.off()
### positive_regulation_apoptosis
pdf("positive_regulation_apoptosis.pdf")
sig_vsd = data[rownames(data) %in% positive_regulation_apoptosis,]
sig_vsd = sig_vsd[apply(sig_vsd,1,sd)!=0,]
  heatmap.2(as.matrix(sig_vsd),col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="",main="Positive Regulation Apoptotis",key.title="Gene expression",cexCol=.65,cexRow=.7)
dev.off()
### death_domain_receptor
pdf("death_domain_receptor.pdf")
sig_vsd = data[rownames(data) %in% death_domain_receptor,]
sig_vsd = sig_vsd[apply(sig_vsd,1,sd)!=0,]
  heatmap.2(as.matrix(sig_vsd),col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="",main="Death Domain Receptor",key.title="Gene expression",cexCol=.65,cexRow=.7)
dev.off()
### caspases
pdf("caspases.pdf")
sig_vsd = data[rownames(data) %in% caspases,]
sig_vsd = sig_vsd[apply(sig_vsd,1,sd)!=0,]
  heatmap.2(as.matrix(sig_vsd),col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="",main="Caspases",key.title="Gene expression",cexCol=.65,cexRow=.7)
dev.off()
### caspase_activation
pdf("caspase_activation.pdf")
sig_vsd = data[rownames(data) %in% caspase_activation,]
sig_vsd = sig_vsd[apply(sig_vsd,1,sd)!=0,]
  heatmap.2(as.matrix(sig_vsd),col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="",main="Caspase Activation",key.title="Gene expression",cexCol=.65,cexRow=.7)
dev.off()
### caspase_inhibition
pdf("caspase_inhibition.pdf")
sig_vsd = data[rownames(data) %in% caspase_inhibition,]
sig_vsd = sig_vsd[apply(sig_vsd,1,sd)!=0,]
  heatmap.2(as.matrix(sig_vsd),col=colors,scale="none", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
  xlab="", ylab="",main="Caspase Inhibition",key.title="Gene expression",cexCol=.65,cexRow=.7)
dev.off()
#####################


