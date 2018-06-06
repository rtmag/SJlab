library(gplots)
library(factoextra)
library(RColorBrewer)
##### ERV1
fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3k9me3_fraction_steph.rds")
h3fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3_fraction_steph.rds")
x=read.csv("/Users/wone/CSI/sjlab/repRNA/repenrich/transposable_elements_log2fc_fdr.csv")
x2= x[which( x$FDR.siC_siK<0.05 & abs(x$logFC.siC_siK)>(.5) & x[,7]=="ERV1" ),]
labels=x2$logFC.siC_siK
labels[labels>0]=1
labels[labels<0]=2
colores = c('grey','salmon')
clab=colores[labels]
h3k9me3=fraction[rownames(fraction) %in% x2$repeats,]
h3=h3fraction[rownames(h3fraction) %in% x2$repeats,]
h3k9me3[,1]=h3k9me3[,1]/h3[,1]
h3k9me3[,2]=h3k9me3[,2]/h3[,2]
colors <- (colorRampPalette( (brewer.pal(9, "Blues")) )(20))

sig_vsd = t(as.matrix(h3k9me3 ))
rownames(sig_vsd) = c("siControl","siTIP60")

pdf("ERV1.pdf")
heatmap.2(sig_vsd,col=colors,scale="none", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","High expression in siTIP60"), 
       cex = 0.75,fill=c('grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()

pdf("ERV1_scaled.pdf")
heatmap.2(sig_vsd,col=colors,scale="column", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","High expression in siTIP60"), 
       cex = 0.75,fill=c('grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()
# ERVK
fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3k9me3_fraction_steph.rds")
h3fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3_fraction_steph.rds")
x=read.csv("/Users/wone/CSI/sjlab/repRNA/repenrich/transposable_elements_log2fc_fdr.csv")
x2= x[which( x$FDR.siC_siK<0.05 & abs(x$logFC.siC_siK)>(.5) & x[,7]=="ERVK" ),]
labels=x2$logFC.siC_siK
labels[labels>0]=1
labels[labels<0]=2
colores = c('grey','salmon')
clab=colores[labels]
h3k9me3=fraction[rownames(fraction) %in% x2$repeats,]
h3=h3fraction[rownames(h3fraction) %in% x2$repeats,]
h3k9me3[,1]=h3k9me3[,1]/h3[,1]
h3k9me3[,2]=h3k9me3[,2]/h3[,2]
colors <- (colorRampPalette( (brewer.pal(9, "Blues")) )(20))

sig_vsd = t(as.matrix(h3k9me3 ))
rownames(sig_vsd) = c("siControl","siTIP60")

pdf("ERVK.pdf")
heatmap.2(sig_vsd,col=colors,scale="none", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","High expression in siTIP60"), 
       cex = 0.75,fill=c('grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()

pdf("ERVK_scaled.pdf")
heatmap.2(sig_vsd,col=colors,scale="column", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","High expression in siTIP60"), 
       cex = 0.75,fill=c('grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()

# ERVL
fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3k9me3_fraction_steph.rds")
h3fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3_fraction_steph.rds")
x=read.csv("/Users/wone/CSI/sjlab/repRNA/repenrich/transposable_elements_log2fc_fdr.csv")
x2= x[which( x$FDR.siC_siK<0.05 & abs(x$logFC.siC_siK)>(.5) & x[,7]=="ERVL" ),]
labels=x2$logFC.siC_siK
labels[labels>0]=1
labels[labels<0]=2
colores = c('grey','salmon')
clab=colores[labels]
h3k9me3=fraction[rownames(fraction) %in% x2$repeats,]
h3=h3fraction[rownames(h3fraction) %in% x2$repeats,]
h3k9me3[,1]=h3k9me3[,1]/h3[,1]
h3k9me3[,2]=h3k9me3[,2]/h3[,2]
colors <- (colorRampPalette( (brewer.pal(9, "Blues")) )(20))

sig_vsd = t(as.matrix(h3k9me3 ))
rownames(sig_vsd) = c("siControl","siTIP60")

pdf("ERVL.pdf")
heatmap.2(sig_vsd,col=colors,scale="none", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","High expression in siTIP60"), 
       cex = 0.75,fill=c('grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()

pdf("ERVL_scaled.pdf")
heatmap.2(sig_vsd,col=colors,scale="column", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","High expression in siTIP60"), 
       cex = 0.75,fill=c('grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()

# ERVL-MaLR
fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3k9me3_fraction_steph.rds")
h3fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3_fraction_steph.rds")
x=read.csv("/Users/wone/CSI/sjlab/repRNA/repenrich/transposable_elements_log2fc_fdr.csv")
x2= x[which( x$FDR.siC_siK<0.05 & abs(x$logFC.siC_siK)>(.5) & x[,7]=="ERVL-MaLR" ),]
labels=x2$logFC.siC_siK
labels[labels>0]=1
labels[labels<0]=2
colores = c('grey','salmon')
clab=colores[labels]
h3k9me3=fraction[rownames(fraction) %in% x2$repeats,]
h3=h3fraction[rownames(h3fraction) %in% x2$repeats,]
h3k9me3[,1]=h3k9me3[,1]/h3[,1]
h3k9me3[,2]=h3k9me3[,2]/h3[,2]
colors <- (colorRampPalette( (brewer.pal(9, "Blues")) )(20))

sig_vsd = t(as.matrix(h3k9me3 ))
rownames(sig_vsd) = c("siControl","siTIP60")

pdf("ERVL-MaLR.pdf")
heatmap.2(sig_vsd,col=colors,scale="none", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","High expression in siTIP60"), 
       cex = 0.75,fill=c('grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()

pdf("ERVL-MaLR_scaled.pdf")
heatmap.2(sig_vsd,col=colors,scale="column", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","High expression in siTIP60"), 
       cex = 0.75,fill=c('grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()
##################################################################################################################################
##################################################################################################################################
##################################################################################################################################

##### ERV1
fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3k9me3_fraction_steph.rds")
h3fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3_fraction_steph.rds")
x=read.csv("/Users/wone/CSI/sjlab/repRNA/repenrich/transposable_elements_log2fc_fdr.csv")
x2= x[which(  x[,7]=="ERV1" ),]
labels=x2$logFC.siC_siK
labels[labels>=0.4]=1
labels[labels<=(-0.4)]=2
labels[labels<0.4 & labels>(-0.4)]=3
colores = c('#77dd77','salmon',"grey")
clab=colores[labels]
h3k9me3=fraction[rownames(fraction) %in% x2$repeats,]
h3=h3fraction[rownames(h3fraction) %in% x2$repeats,]
h3k9me3[,1]=h3k9me3[,1]/h3[,1]
h3k9me3[,2]=h3k9me3[,2]/h3[,2]
colors <- (colorRampPalette( (brewer.pal(9, "Blues")) )(20))

sig_vsd = t(as.matrix(h3k9me3 ))
rownames(sig_vsd) = c("siControl","siTIP60")

pdf("ERV1_all.pdf")
heatmap.2(sig_vsd,col=colors,scale="none", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","No change","High expression in siTIP60"), 
       cex = 0.75,fill=c('#77dd77','grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()

pdf("ERV1_all_scaled.pdf")
heatmap.2(sig_vsd,col=colors,scale="column", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","No change","High expression in siTIP60"), 
       cex = 0.75,fill=c('#77dd77','grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()
# ERVK
fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3k9me3_fraction_steph.rds")
h3fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3_fraction_steph.rds")
x=read.csv("/Users/wone/CSI/sjlab/repRNA/repenrich/transposable_elements_log2fc_fdr.csv")
x2= x[which(  x[,7]=="ERVK" ),]
labels=x2$logFC.siC_siK
labels[labels>=0.4]=1
labels[labels<=(-0.4)]=2
labels[labels<0.4 & labels>(-0.4)]=3
colores = c('#77dd77','salmon',"grey")
clab=colores[labels]
h3k9me3=fraction[rownames(fraction) %in% x2$repeats,]
h3=h3fraction[rownames(h3fraction) %in% x2$repeats,]
h3k9me3[,1]=h3k9me3[,1]/h3[,1]
h3k9me3[,2]=h3k9me3[,2]/h3[,2]
colors <- (colorRampPalette( (brewer.pal(9, "Blues")) )(20))

sig_vsd = t(as.matrix(h3k9me3 ))
rownames(sig_vsd) = c("siControl","siTIP60")

pdf("ERVK_all.pdf")
heatmap.2(sig_vsd,col=colors,scale="none", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")
legend("top", legend=c("High expression in siControl","No change","High expression in siTIP60"), 
       cex = 0.75,fill=c('#77dd77','grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()

pdf("ERVK_all_scaled.pdf")
heatmap.2(sig_vsd,col=colors,scale="column", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","No change","High expression in siTIP60"), 
       cex = 0.75,fill=c('#77dd77','grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()

# ERVL
fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3k9me3_fraction_steph.rds")
h3fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3_fraction_steph.rds")
x=read.csv("/Users/wone/CSI/sjlab/repRNA/repenrich/transposable_elements_log2fc_fdr.csv")
x2= x[which(  x[,7]=="ERVL" ),]
labels=x2$logFC.siC_siK
labels[labels>=0.4]=1
labels[labels<=(-0.4)]=2
labels[labels<0.4 & labels>(-0.4)]=3
colores = c('#77dd77','salmon',"grey")
clab=colores[labels]
h3k9me3=fraction[rownames(fraction) %in% x2$repeats,]
h3=h3fraction[rownames(h3fraction) %in% x2$repeats,]
h3k9me3[,1]=h3k9me3[,1]/h3[,1]
h3k9me3[,2]=h3k9me3[,2]/h3[,2]
colors <- (colorRampPalette( (brewer.pal(9, "Blues")) )(20))

sig_vsd = t(as.matrix(h3k9me3 ))
rownames(sig_vsd) = c("siControl","siTIP60")

pdf("ERVL_all.pdf")
heatmap.2(sig_vsd,col=colors,scale="none", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","No change","High expression in siTIP60"), 
       cex = 0.75,fill=c('#77dd77','grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()

pdf("ERVL_all_scaled.pdf")
heatmap.2(sig_vsd,col=colors,scale="column", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","No change","High expression in siTIP60"), 
       cex = 0.75,fill=c('#77dd77','grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()

# ERVL-MaLR
fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3k9me3_fraction_steph.rds")
h3fraction=readRDS("/Users/wone/Downloads/repenrich/notrna/h3_fraction_steph.rds")
x=read.csv("/Users/wone/CSI/sjlab/repRNA/repenrich/transposable_elements_log2fc_fdr.csv")
x2= x[which(  x[,7]=="ERVL-MaLR" ),]
labels=x2$logFC.siC_siK
labels[labels>=0.4]=1
labels[labels<=(-0.4)]=2
labels[labels<0.4 & labels>(-0.4)]=3
colores = c('#77dd77','salmon',"grey")
clab=colores[labels]
h3k9me3=fraction[rownames(fraction) %in% x2$repeats,]
h3=h3fraction[rownames(h3fraction) %in% x2$repeats,]
h3k9me3[,1]=h3k9me3[,1]/h3[,1]
h3k9me3[,2]=h3k9me3[,2]/h3[,2]
colors <- (colorRampPalette( (brewer.pal(9, "Blues")) )(20))

sig_vsd = t(as.matrix(h3k9me3 ))
rownames(sig_vsd) = c("siControl","siTIP60")

pdf("ERVL-MaLR_all.pdf")
heatmap.2(sig_vsd,col=colors,scale="none", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")

legend("top", legend=c("High expression in siControl","No change","High expression in siTIP60"), 
       cex = 0.75,fill=c('#77dd77','grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()

pdf("ERVL-MaLR_all_scaled.pdf")
heatmap.2(sig_vsd,col=colors,scale="column", trace="none",margins=c(40,6),
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="",cexRow = .9,cexCol=.7,
          dendrogram = 'none',Rowv=F,lhei = c(.7,5),lwid=c(1,5),keysize=0.75, key.par = list(cex=0.5),
          Colv=T,ColSideColors = clab,density.info="none",key.xlab="H3K9me3/H3")
legend("top", legend=c("High expression in siControl","No change","High expression in siTIP60"), 
       cex = 0.75,fill=c('#77dd77','grey','salmon'), bty = "n",border=NA,inset=c(0,0.33))
dev.off()


