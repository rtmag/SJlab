
#annotatePeaks.pl H3_down.bed hg38 -annStats H3_down.annStats > H3_down.anno
#annotatePeaks.pl H3_up.bed hg38 -annStats H3_up.annStats > H3_up.anno
#annotatePeaks.pl k9me3_down.bed hg38 -annStats k9me3_down.annStats > k9me3_down.anno
#annotatePeaks.pl k9me3_up.bed hg38 -annStats k9me3_up.annStats > k9me3_up.anno
pdf("H3_down_annStats.pdf")
#postscript("H3_down_annStats.ps")
par(mar=c(5.1,5.1,4.1,5))
res=read.table(pipe("more H3_down.annStats|cut -f1,2,4"), sep="\t",header=F)
i1 = which(res[,1]=="Annotation")[2]+1
i2 = dim(res)[1]
res = res[ i1:i2,]
tdown = as.numeric(as.character(res[,2]))
names(tdown) = res[,1]
names(tdown) = paste(names(tdown)," ",round(tdown/sum(tdown)*100,digits=2),"%",sep="")
tdown = tdown[tdown>16]
pie(tdown, main="Distribution of H3 peaks observed in\nsiControl compared to siTIP60 (12,586 peaks)")
dev.off()

pdf("H3_up_annStats.pdf")
#postscript("H3_up_annStats.ps")
res=read.table(pipe("more H3_up.annStats |cut -f1,2,4"), sep="\t",header=F)
i1 = which(res[,1]=="Annotation")[2]+1
i2 = dim(res)[1]
res = res[ i1:i2,]
tdown = as.numeric(as.character(res[,2]))
names(tdown) = res[,1]
names(tdown) = paste(names(tdown)," ",round(tdown/sum(tdown)*100,digits=2),"%",sep="")
tdown = tdown[tdown>16]
pie(tdown, main="Distribution of H3 peaks observed in\nsiTIP60 compared to siControl (8,747 peaks)")
dev.off()

###
pdf("H3K9me3_down_annStats.pdf")
#postscript("H3K9me3_down_annStats.ps")
res=read.table(pipe("more k9me3_down.annStats |cut -f1,2,4"), sep="\t",header=F)
i1 = which(res[,1]=="Annotation")[2]+1
i2 = dim(res)[1]
res = res[ i1:i2,]
tdown = as.numeric(as.character(res[,2]))
names(tdown) = res[,1]
names(tdown) = paste(names(tdown)," ",round(tdown/sum(tdown)*100,digits=2),"%",sep="")
tdown = tdown[tdown>16]
pie(tdown, main="Distribution of H3k9me3 peaks observed in\nsiControl compared to siTIP60 (8,389 peaks)")
dev.off()

pdf("H3K9me3_up_annStats.pdf")
#postscript("H3K9me3_up_annStats.ps")
res=read.table(pipe("more k9me3_up.annStats |cut -f1,2,4"), sep="\t",header=F)
i1 = which(res[,1]=="Annotation")[2]+1
i2 = dim(res)[1]
res = res[ i1:i2,]
tdown = as.numeric(as.character(res[,2]))
names(tdown) = res[,1]
names(tdown) = paste(names(tdown)," ",round(tdown/sum(tdown)*100,digits=2),"%",sep="")
tdown = tdown[tdown>16]
pie(tdown, main="Distribution of H3k9me3 peaks observed in\nsiTIP60 compared to siControl (10,866 peaks)")
dev.off()
######################

pdf("k9me3_h3norm_siC_annStats.pdf")
#postscript("H3K9me3_up_annStats.ps")
res=read.table(pipe("more k9me3_h3norm_siC.annStats |cut -f1,2,4"), sep="\t",header=F)
i1 = which(res[,1]=="Annotation")[2]+1
i2 = dim(res)[1]
res = res[ i1:i2,]
tdown = as.numeric(as.character(res[,2]))
names(tdown) = res[,1]
names(tdown) = paste(names(tdown)," ",round(tdown/sum(tdown)*100,digits=2),"%",sep="")
tdown = tdown[tdown>16]
pie(tdown, main="Distribution of H3k9me3 peaks observed in\nsiControl compared to siTIP60 (3,653 peaks)")
dev.off()

pdf("k9me3_h3norm_siK_annStats.pdf")
#postscript("H3K9me3_up_annStats.ps")
res=read.table(pipe("more k9me3_h3norm_siK.annStats |cut -f1,2,4"), sep="\t",header=F)
i1 = which(res[,1]=="Annotation")[2]+1
i2 = dim(res)[1]
res = res[ i1:i2,]
tdown = as.numeric(as.character(res[,2]))
names(tdown) = res[,1]
names(tdown) = paste(names(tdown)," ",round(tdown/sum(tdown)*100,digits=2),"%",sep="")
tdown = tdown[tdown>16]
pie(tdown, main="Distribution of H3k9me3 peaks observed in\nsiTIP60 compared to siControl (10,969 peaks)")
dev.off()
