library(gplots)
library(factoextra)
library(RColorBrewer)

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
rownames(sig_vsd) = c("siC","siK")

heatmap.2(sig_vsd,col=colors,scale="none", trace="none",
          distfun = function(x) get_dist(x,method="pearson"),srtCol=90,
          xlab="", ylab="",key.title="H3K9me3/H3",cexRow = .7,cexCol=.7,
          dendrogram = 'none',Rowv=T,lhei = c(4,1),keysize=1,
          Colv=T,ColSideColors = clab,key.par = list(cex=0.5))
