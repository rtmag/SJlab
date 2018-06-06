
k9m3class=readRDS("h3k9me3_class_steph.rds")
k9m3family=readRDS("h3k9me3_family_steph.rds")

h3class=readRDS("h3_class_steph.rds")
h3family=readRDS("h3_family_steph.rds")

pdf("h3k9me3_ratio_h3_class_steph.pdf")
par(mar=c(4,1.1,1.1,6))
x=((k9m3class[,1]/h3class[,2])-(k9m3class[,2]/h3class[,2]))
names(x)=rownames(k9m3class)
x=sort(x)
x = x[names(x) %in% c("SINE","Other","LTR","LINE","DNA")]
barplot(t(x),beside=T,ylim=c(-.2,.2),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,axes = FALSE)
axis(4)
mtext("Log2FC ( siControl / siTIP60 ) Normalized fragment counts from the H3K9me3/H3 ratio", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()

pdf("h3k9me3_ratio_h3_family_steph.pdf")
par(mar=c(7,1.1,1.1,6))
x=((k9m3family[,1]/h3family[,2])-(k9m3family[,2]/h3family[,2]))
names(x)=rownames(k9m3family)
x=sort(x)
x = x[names(x) %in% c("hAT-Tip100?","hAT-Tip100","hAT-Charlie","hAT-Blackjack","hAT","TcMar-Tigger","Piggybac","Other","L1",
		     "Gypsy","ERVL-MaLR","ERVL","ERVK","ERV1","ERV1","Alu") ]
barplot(t(x),beside=T,border=T,ylim=c(-.3,.3),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,cex.names=1,axes = FALSE)
axis(4)
mtext("Log2FC ( siControl / siTIP60 ) Normalized fragment counts from the H3K9me3/H3 ratio", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()
