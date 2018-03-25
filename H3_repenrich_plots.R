

class=readRDS("h3k9me3_class.rds")
fraction=readRDS("h3k9me3_fraction.rds")
family=readRDS("h3k9me3_family.rds")

pdf("h3k9me3_class.pdf")
par(mar=c(4,1.1,1.1,6))
x=(class[,1]-class[,2])
names(x)=rownames(class)
x=sort(x)
x = x[names(x) %in% c("SINE","Other","LTR","LINE","DNA")]
barplot(t(x),beside=T,ylim=c(-.5,.1),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3K9me3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()

pdf("h3k9me3_fraction.pdf",width=12)
par(mar=c(4,1.1,1.1,4))
x=(fraction[,1]-fraction[,2])
names(x)=rownames(fraction)
x=sort(x)
x = x[grep("RNA",names(x),invert=T)]
x = x[which(abs(x)>0.1)]
barplot(t(x),beside=T,border=T,
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,space=rep(2,length(x)),cex.names=.4,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3K9me3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()

#bottom, left, top and righ
pdf("h3k9me3_family.pdf")
par(mar=c(7,1.1,1.1,6))
x=(family[,1]-family[,2])
names(x)=rownames(family)
x=sort(x)
x = x[names(x) %in% c("tRNA","hAT-Tip100?","hAT-Tip100","hAT-Charlie","hAT-Blackjack","hAT","TcMar-Tigger","Piggybac","Other","L1",
		     "Gypsy","ERVL-MaLR","ERVL","ERVK","ERV1","ERV1","Alu") ]
barplot(t(x),beside=T,border=T,ylim=c(-.1,.4),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,cex.names=1,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3K9me3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()
