x=readRDS("dLRT_res.rds")

tip60=x
h2az=read.table("~/Downloads/h2az/dds_res_RNASeq.txt",stringsAsFactors=F)

#selection
 tip60.up= tip60$log2FoldChange>1 & tip60$padj<0.05
 tip60.dw= tip60$log2FoldChange<(-1) & tip60$padj<0.05

 h2az.up= h2az$log2FoldChange>1 & h2az$padj<0.05
 h2az.dw= h2az$log2FoldChange<(-1) & h2az$padj<0.05

#names
tip60.up.names= rownames(tip60[which(tip60.up),])
tip60.dw.names= rownames(tip60[which(tip60.dw),])

h2az.up.names= rownames(h2az[which(h2az.up),])
h2az.dw.names= rownames(h2az[which(h2az.dw),])

#name overlap
dwnames=read.table("~/Downloads/NEW_down_overlap.txt",stringsAsFactors=F)
dwnames=dwnames[,1]

upnames=read.table("~/Downloads/NEW_up_overlap.txt",stringsAsFactors=F)
upnames=upnames[,1]

table(rownames(tip60) %in% dwnames)
table(rownames(tip60) %in% upnames)

table(rownames(h2az) %in% dwnames)
table(rownames(h2az) %in% upnames)

x=tip60
library(graphics)
postscript("/home/rtm/Downloads/h2az/siTIP60_siC_volcano.ps", width= 100, height= 100)
 smoothScatter(x$log2FoldChange,-log10(x$padj),xlab=expression('Log'[2]*' Fold Change'),ylab=expression('-Log'[10]*' Q-values'),nrpoints=0)
 p.ix= x$log2FoldChange>1 & x$padj<0.05
 points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="goldenrod4", pch = 20)
 p.ix= x$log2FoldChange<(-1) & x$padj<0.05
 points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="darkblue", pch = 20)
 abline(v=1, col ='grey');abline(v=(-1), col ='grey');
 abline(h=-log10(.05), col ='grey')
 legend("topright", "523", bty="n",cex=2,text.col="grey") 
 legend("topleft", "850", bty="n",cex=2,text.col="grey") 
 points(x$log2FoldChange[rownames(tip60) %in% dwnames],-log10(x$padj[rownames(tip60) %in% dwnames]),pch = 4,col="red")
 points(x$log2FoldChange[rownames(tip60) %in% upnames],-log10(x$padj[rownames(tip60) %in% upnames]), pch = 4,col="red")

dev.off()


h2az=read.table("~/Downloads/h2az/dds_res_RNASeq.txt",stringsAsFactors=F)
x=h2az
#postscript("/home/rtm/Downloads/h2az/siH2AZ_siC_volcano.ps", width= 100, height= 100)
 smoothScatter(x$log2FoldChange,-log10(x$padj),xlab=expression('Log'[2]*' Fold Change'),ylab=expression('-Log'[10]*' Q-values'),nrpoints=0)
 p.ix= x$log2FoldChange>1 & x$padj<0.05
 points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="goldenrod4", pch = 20)
 p.ix= x$log2FoldChange<(-1) & x$padj<0.05
 points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="darkblue", pch = 20)
 abline(v=1, col ='grey');abline(v=(-1), col ='grey');
 abline(h=-log10(.05), col ='grey')
 legend("topright", "525", bty="n",cex=2,text.col="grey") 
 legend("topleft", "436", bty="n",cex=2,text.col="grey") 
 points(x$log2FoldChange[rownames(h2az) %in% dwnames],-log10(x$padj[rownames(h2az) %in% dwnames]),pch = 4,col="red")
 points(x$log2FoldChange[rownames(h2az) %in% upnames],-log10(x$padj[rownames(h2az) %in% upnames]), pch = 4,col="red")

dev.off()




x=tip60
library(graphics)
postscript("/home/rtm/Downloads/h2az/siTIP60_siC_volcano_overlap.ps", width= 100, height= 100)
 smoothScatter(x$log2FoldChange,-log10(x$padj),xlab=expression('Log'[2]*' Fold Change'),ylab=expression('-Log'[10]*' Q-values'),nrpoints=0)
 p.ix= x$log2FoldChange>1 & x$padj<0.05
 points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="goldenrod4", pch = 20)
 p.ix= x$log2FoldChange<(-1) & x$padj<0.05
 points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="darkblue", pch = 20)
 abline(v=1, col ='grey');abline(v=(-1), col ='grey');
 abline(h=-log10(.05), col ='grey')
 legend("topright", "523", bty="n",cex=2,text.col="grey") 
 legend("topleft", "850", bty="n",cex=2,text.col="grey") 
 points(x$log2FoldChange[rownames(tip60) %in% dwnames],-log10(x$padj[rownames(tip60) %in% dwnames]),pch = 4,col="red")
 points(x$log2FoldChange[rownames(tip60) %in% upnames],-log10(x$padj[rownames(tip60) %in% upnames]), pch = 4,col="red")

dev.off()


h2az=read.table("~/Downloads/h2az/dds_res_RNASeq.txt",stringsAsFactors=F)
x=h2az
postscript("/home/rtm/Downloads/h2az/siH2AZ_siC_volcano_overlap.ps", width= 100, height= 100)
 smoothScatter(x$log2FoldChange,-log10(x$padj),xlab=expression('Log'[2]*' Fold Change'),ylab=expression('-Log'[10]*' Q-values'),nrpoints=0)
 p.ix= x$log2FoldChange>1 & x$padj<0.05
 points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="goldenrod4", pch = 20)
 p.ix= x$log2FoldChange<(-1) & x$padj<0.05
 points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="darkblue", pch = 20)
 abline(v=1, col ='grey');abline(v=(-1), col ='grey');
 abline(h=-log10(.05), col ='grey')
 legend("topright", "525", bty="n",cex=2,text.col="grey") 
 legend("topleft", "436", bty="n",cex=2,text.col="grey") 
 points(x$log2FoldChange[rownames(h2az) %in% dwnames],-log10(x$padj[rownames(h2az) %in% dwnames]),pch = 4,col="red")
 points(x$log2FoldChange[rownames(h2az) %in% upnames],-log10(x$padj[rownames(h2az) %in% upnames]), pch = 4,col="red")

dev.off()



