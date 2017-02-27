 cut -f1 DEG_NAME_log2FC_0.05.txt > DEG_NAME_0.05.txt
 
  more hg19_tss_2kb.bed |grep -w -f DEG_NAME_0.05.txt > DEG_0.05_hg19_tss_2kb.bed

  more DEG_NAME_log2FC_0.05.txt | awk '{if($2<0){print $1"\t"$2}}' > DEG_NAME_log2FC_0.05_DOWN.txt

  more DEG_NAME_log2FC_0.05.txt | awk '{if($2<0){print $1}}' > DEG_NAME_0.05_DOWN.txt
  
  bedtools intersect -a DEG_0.05_hg19_tss_2kb.bed -b Ac_res.bed |grep -w -f DEG_NAME_0.05_DOWN.txt | wc -l

##
more hg19_tssOnly_canonical_full.bed|grep -v "#"| awk -F  "\t" '{print $1"\t"$2-2000"\t"$2+2000"\t"$4"\t"4000"\t"$6}' > \
hg19_tssOnly_canonical_2kb.bed

more hg19_tssOnly_canonical_2kb.bed| grep -w -f DEG_NAME_0.05_DOWN.txt| bedtools intersect -a - -b Ac_res.bed | wc -l


more hg19_tss_2kb.bed| grep -w -f DEG_NAME_0.05_DOWN.txt| bedtools intersect -a - -b Ac_res.bed | \
bedtools intersect -a - -b A2_merged_regions.bed | wc -l 

# AC

#####


 x=read.table("kegg_mini.txt",sep="\t",header=T)
 
 
 x=cbind(x,lengths(strsplit(as.character(x$members_input_overlap),";")))

x=cbind(x,x[5]/x[4]*100)

keggnames=gsub(" - Homo sapiens \\(human\\)","",as.character(x[,2]))

postscript("KEGG_enrichment.ps")
par(mar=c(5,18,4,2))
barplot(x[order(x[6]),6],col="salmon",horiz=T,las=2,
		names.arg=keggnames[order(x[6])],main="KEGG Pathway enrichment",
		border=NA,xlab="Genes input / Total genes in Pathway")
dev.off()


 x=read.table("REACTOME.txt",sep="\t",header=T)
 x=cbind(x,lengths(strsplit(as.character(x$members_input_overlap),";")))
x=cbind(x,x[10]/x[9]*100)


#########################################################################################################




data=read.table(pipe("grep -v '#' AC_TSS.txt"),stringsAsFactors=F)

postscript("AC_TSS_avg_plot.ps")
plot(colMeans(data[,1:400]),type="l",xlab="TSS",xaxt='n', col="darkblue",lwd=3,ylab="AVG ChIP-Seq signal")
lines(colMeans(data[,401:800]),type="l",col="goldenrod4",lwd=3)
Axis(side=1, labels=c("-2KB","0","2KB"),at=c(0,200,400))
legend("topright", legend=c("siC","siT"), fill=c('darkblue','goldenrod4'), bty = "n",border=NA)
text(temp,"p-value < 2.2e-16")
dev.off()
##
data=read.table(pipe("grep -v '#' A2_TSS.txt"),stringsAsFactors=F)

 wilcox.test(colMeans(data[,1:400]),colMeans(data[,400:800]))

postscript("A2_TSS_avg_plot.ps")
plot(colMeans(data[,1:400]),type="l",xlab="TSS",xaxt='n', col="darkblue",lwd=3,ylab="AVG ChIP-Seq signal",ylim=c(min(colMeans(data)),max(colMeans(data)))  )
lines(colMeans(data[,401:800]),type="l",col="goldenrod4",lwd=3)
Axis(side=1, labels=c("-2KB","0","2KB"),at=c(0,200,400))
legend("topright", legend=c("siC","siT"), fill=c('darkblue','goldenrod4'), bty = "n",border=NA)
text(100,1.8,"p-value < 2.2e-16")
dev.off()
#

data=read.table(pipe("grep -v '#' AC_TSS.txt"),stringsAsFactors=F)
data2=read.table(pipe("grep -v '#' A2_TSS.txt"),stringsAsFactors=F)

siC=colMeans(data[,1:400])/colMeans(data2[,1:400])
siT=colMeans(data[,401:800])/colMeans(data2[,401:800])

plot(siC,
type="l",xlab="TSS",xaxt='n', col="darkblue",lwd=3,
ylab="AVG ChIP-Seq signal",ylim=c( min(siC,siT),max(siC,siT) )  )
lines(siT,type="l",col="goldenrod4",lwd=3)
Axis(side=1, labels=c("-2KB","0","2KB"),at=c(0,200,400))
legend("topright", legend=c("siC","siT"), fill=c('darkblue','goldenrod4'), bty = "n",border=NA)

datas=(data+1)/(data2+1)
plot(colMeans(datas[,1:400]),type="l",xlab="TSS",xaxt='n', col="darkblue",lwd=3,ylab="AVG ChIP-Seq signal",ylim=c(min(colMeans(datas)),max(colMeans(datas)))  )
lines(colMeans(datas[,401:800]),type="l",col="goldenrod4",lwd=3)
Axis(side=1, labels=c("-2KB","0","2KB"),at=c(0,200,400))
legend("topright", legend=c("siC","siT"), fill=c('darkblue','goldenrod4'), bty = "n",border=NA)
##
x=readRDS("dLRT_res.rds")
library(graphics)
postscript("volcano.ps", width= 100, height= 100)
 smoothScatter(x$log2FoldChange,-log10(x$padj),xlab=expression('Log'[2]*' Fold Change'),ylab=expression('-Log'[10]*' P-values'))
 p.ix= x$log2FoldChange>1 & x$padj<0.05
 points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="goldenrod4", pch = 16)
 p.ix= x$log2FoldChange<(-1) & x$padj<0.05
 points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="darkblue", pch = 16)
 abline(v=1, col ='grey');abline(v=(-1), col ='grey');
 abline(h=-log10(.05), col ='grey')
 #legend("topright", "523", bty="n",cex=2,col="goldenrod4") 
 #legend("topleft", "850", bty="n",cex=2,col="darkblue") 
dev.off()




postscript("volcano_TSSpeak_regions.ps", width= 100, height= 100)
 smoothScatter(x$log2FoldChange,-log10(x$padj),xlab=expression('Log'[2]*' Fold Change'),ylab=expression('-Log'[10]*' P-values'))
 p.ix= x$log2FoldChange>1 & x$padj<0.05
 points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="goldenrod4", pch = 16)
 p.ix= x$log2FoldChange<(-1) & x$padj<0.05
 points(x$log2FoldChange[p.ix],-log10(x$padj[p.ix]),col="darkblue", pch = 16)
 abline(v=1, col ='grey',lty = 2);
 abline(v=(-1), col ='grey',lty = 2);
 abline(h=-log10(.05), col ='grey',lty = 2)


dev.off()
