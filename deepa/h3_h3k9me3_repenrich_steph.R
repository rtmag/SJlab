###########################################################################################################
library('edgeR')
# In the case of seperate outputs, load the RepEnrich results - fraction counts
h3k9me3_siC <- read.delim('siControl_H3K9me3_steph_fraction_counts.txt', header=FALSE)
h3k9me3_siK <- read.delim('siTIP60_H3K9me3_steph_fraction_counts.txt', header=FALSE)

h3k9me3_siC_class <- read.delim('siControl_H3K9me3_steph_class_fraction_counts.txt', header=FALSE)
h3k9me3_siK_class <- read.delim('siTIP60_H3K9me3_steph_class_fraction_counts.txt', header=FALSE)

h3k9me3_siC_family <- read.delim('siControl_H3K9me3_steph_family_fraction_counts.txt', header=FALSE)
h3k9me3_siK_family <- read.delim('siTIP60_H3K9me3_steph_family_fraction_counts.txt', header=FALSE)
##################
#' Build a counts table
counts <- data.frame(
  row.names = h3k9me3_siC[,1],  
  h3k9me3_siC = h3k9me3_siC[,4], h3k9me3_siK = h3k9me3_siK[,4]
)

meta <- data.frame(
	row.names=colnames(counts),
	condition=c("h3k9me3_siC","h3k9me3_siK"),
	libsize=c(73350175,76696799)
)

libsize <- meta$libsize
condition <- factor(meta$condition)
design <- model.matrix(~0+condition)
colnames(design) <- levels(meta$condition)
# Build a DGE object for the GLM
y <- DGEList(counts=counts, lib.size=libsize)
# Normalize the data
y <- calcNormFactors(y)
logcpm <- cpm(y, log=TRUE, lib.size=libsize)
logcpm <- as.data.frame(logcpm)
colnames(logcpm) <- factor(meta$condition)

fraction = logcpm
#################################
counts <- data.frame(
  row.names = h3k9me3_siC_class[,1],  
  h3k9me3_siC_class = h3k9me3_siC_class[,2], h3k9me3_siK_class = h3k9me3_siK_class[,2]
)

meta <- data.frame(
	row.names=colnames(counts),
	condition=c("h3k9me3_siC_class","h3k9me3_siK_class"),
	libsize=c(73350175,76696799)
)

libsize <- meta$libsize
condition <- factor(meta$condition)
design <- model.matrix(~0+condition)
colnames(design) <- levels(meta$condition)
# Build a DGE object for the GLM
y <- DGEList(counts=counts, lib.size=libsize)
# Normalize the data
y <- calcNormFactors(y)
logcpm <- cpm(y, log=TRUE, lib.size=libsize)
logcpm <- as.data.frame(logcpm)
colnames(logcpm) <- factor(meta$condition)
class = logcpm
#####################
counts <- data.frame(
  row.names = h3k9me3_siC_family[,1],  
  h3k9me3_siC_family = h3k9me3_siC_family[,2], h3k9me3_siK_family = h3k9me3_siK_family[,2]
)

meta <- data.frame(
	row.names=colnames(counts),
	condition=c("h3k9me3_siC_family","h3k9me3_siK_family"),
	libsize=c(73350175,76696799)
)

libsize <- meta$libsize
condition <- factor(meta$condition)
design <- model.matrix(~0+condition)
colnames(design) <- levels(meta$condition)
# Build a DGE object for the GLM
y <- DGEList(counts=counts, lib.size=libsize)
# Normalize the data
y <- calcNormFactors(y)
logcpm <- cpm(y, log=TRUE, lib.size=libsize)
logcpm <- as.data.frame(logcpm)
colnames(logcpm) <- factor(meta$condition)
family = logcpm

saveRDS(class,"h3k9me3_class_steph.rds")
saveRDS(fraction,"h3k9me3_fraction_steph.rds")
saveRDS(family,"h3k9me3_family_steph.rds")

##########################################################
class=readRDS("h3k9me3_class_steph.rds")
fraction=readRDS("h3k9me3_fraction_steph.rds")
family=readRDS("h3k9me3_family_steph.rds")

postscript("h3k9me3_class_steph.ps")
par(mar=c(4,1.1,1.1,6))
x=(class[,1]-class[,2])
names(x)=rownames(class)
x=sort(x)
x = x[names(x) %in% c("SINE","Other","LTR","LINE","DNA")]
barplot(t(x),beside=T,ylim=c(-.2,.2),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3K9me3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()

postscript("h3k9me3_fraction_steph.ps",width=12)
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
postscript("h3k9me3_family_steph.ps")
par(mar=c(7,1.1,1.1,6))
x=(family[,1]-family[,2])
names(x)=rownames(family)
x=sort(x)
x = x[names(x) %in% c("tRNA","hAT-Tip100?","hAT-Tip100","hAT-Charlie","hAT-Blackjack","hAT","TcMar-Tigger","Piggybac","Other","L1",
		     "Gypsy","ERVL-MaLR","ERVL","ERVK","ERV1","ERV1","Alu") ]
barplot(t(x),beside=T,border=T,ylim=c(-.3,.3),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,cex.names=1,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3K9me3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()

#######################################################################################################################################
#######################################################################################################################################
#######################################################################################################################################
#######################################################################################################################################
#######################################################################################################################################
#######################################################################################################################################
#######################################################################################################################################
###########################################################################################################
library('edgeR')
# In the case of seperate outputs, load the RepEnrich results - fraction counts
h3_siC <- read.delim('siControl_H3_steph_fraction_counts.txt', header=FALSE)
h3_siK <- read.delim('siTIP60_H3_steph_fraction_counts.txt', header=FALSE)

h3_siC_class <- read.delim('siControl_H3_steph_class_fraction_counts.txt', header=FALSE)
h3_siK_class <- read.delim('siTIP60_H3_steph_class_fraction_counts.txt', header=FALSE)

h3_siC_family <- read.delim('siControl_H3_steph_family_fraction_counts.txt', header=FALSE)
h3_siK_family <- read.delim('siTIP60_H3_steph_family_fraction_counts.txt', header=FALSE)
##################
#' Build a counts table
counts <- data.frame(
  row.names = h3_siC[,1],  
  h3_siC = h3_siC[,4], h3_siK = h3_siK[,4]
)

meta <- data.frame(
	row.names=colnames(counts),
	condition=c("h3_siC","h3_siK"),
	libsize=c(74401979,76002273)
)

libsize <- meta$libsize
condition <- factor(meta$condition)
design <- model.matrix(~0+condition)
colnames(design) <- levels(meta$condition)
# Build a DGE object for the GLM
y <- DGEList(counts=counts, lib.size=libsize)
# Normalize the data
y <- calcNormFactors(y)
logcpm <- cpm(y, log=TRUE, lib.size=libsize)
logcpm <- as.data.frame(logcpm)
colnames(logcpm) <- factor(meta$condition)

fraction = logcpm
#################################
counts <- data.frame(
  row.names = h3_siC_class[,1],  
  h3_siC_class = h3_siC_class[,2], h3_siK_class = h3_siK_class[,2]
)

meta <- data.frame(
	row.names=colnames(counts),
	condition=c("h3_siC","h3_siK"),
	libsize=c(74401979,76002273)
)

libsize <- meta$libsize
condition <- factor(meta$condition)
design <- model.matrix(~0+condition)
colnames(design) <- levels(meta$condition)
# Build a DGE object for the GLM
y <- DGEList(counts=counts, lib.size=libsize)
# Normalize the data
y <- calcNormFactors(y)
logcpm <- cpm(y, log=TRUE, lib.size=libsize)
logcpm <- as.data.frame(logcpm)
colnames(logcpm) <- factor(meta$condition)
class = logcpm
#####################
counts <- data.frame(
  row.names = h3_siC_family[,1],  
  h3_siC_family = h3_siC_family[,2], h3_siK_family = h3_siK_family[,2]
)

meta <- data.frame(
	row.names=colnames(counts),
	condition=c("h3_siC","h3_siK"),
	libsize=c(74401979,76002273)
)

libsize <- meta$libsize
condition <- factor(meta$condition)
design <- model.matrix(~0+condition)
colnames(design) <- levels(meta$condition)
# Build a DGE object for the GLM
y <- DGEList(counts=counts, lib.size=libsize)
# Normalize the data
y <- calcNormFactors(y)
logcpm <- cpm(y, log=TRUE, lib.size=libsize)
logcpm <- as.data.frame(logcpm)
colnames(logcpm) <- factor(meta$condition)
family = logcpm

saveRDS(class,"h3_class_steph.rds")
saveRDS(fraction,"h3_fraction_steph.rds")
saveRDS(family,"h3_family_steph.rds")

##########################################################
class=readRDS("h3_class_steph.rds")
fraction=readRDS("h3_fraction_steph.rds")
family=readRDS("h3_family_steph.rds")

postscript("h3_class_steph.ps")
par(mar=c(4,1.1,1.1,6))
x=(class[,1]-class[,2])
names(x)=rownames(class)
x=sort(x)
x = x[names(x) %in% c("SINE","Other","LTR","LINE","DNA")]
barplot(t(x),beside=T,ylim=c(-.2,.2),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()

postscript("h3_fraction_steph.ps",width=12)
par(mar=c(4,1.1,1.1,4))
x=(fraction[,1]-fraction[,2])
names(x)=rownames(fraction)
x=sort(x)
x = x[grep("RNA",names(x),invert=T)]
x = x[which(abs(x)>0.1)]
barplot(t(x),beside=T,border=T,
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,space=rep(2,length(x)),cex.names=.4,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()

#bottom, left, top and righ
postscript("h3_family_steph.ps")
par(mar=c(7,1.1,1.1,6))
x=(family[,1]-family[,2])
names(x)=rownames(family)
x=sort(x)
x = x[names(x) %in% c("tRNA","hAT-Tip100?","hAT-Tip100","hAT-Charlie","hAT-Blackjack","hAT","TcMar-Tigger","Piggybac","Other","L1",
		     "Gypsy","ERVL-MaLR","ERVL","ERVK","ERV1","ERV1","Alu") ]
barplot(t(x),beside=T,border=T,ylim=c(-.3,.3),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,cex.names=1,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()
#######################################################################################################################################
#######################################################################################################################################
#######################################################################################################################################
#######################################################################################################################################
#######################################################################################################################################
#######################################################################################################################################
#######################################################################################################################################
###########################################################################################################

class=readRDS("h3k9me3_class_steph.rds")
fraction=readRDS("h3k9me3_fraction_steph.rds")
family=readRDS("h3k9me3_family_steph.rds")

pdf("h3k9me3_class_steph.pdf")
par(mar=c(4,1.1,1.1,6))
x=(class[,1]-class[,2])
names(x)=rownames(class)
x=sort(x)
x = x[names(x) %in% c("SINE","Other","LTR","LINE","DNA")]
barplot(t(x),beside=T,ylim=c(-.2,.2),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3K9me3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()

pdf("h3k9me3_fraction_steph.pdf",width=12)
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
pdf("h3k9me3_family_steph.pdf")
par(mar=c(7,1.1,1.1,6))
x=(family[,1]-family[,2])
names(x)=rownames(family)
x=sort(x)
x = x[names(x) %in% c("tRNA","hAT-Tip100?","hAT-Tip100","hAT-Charlie","hAT-Blackjack","hAT","TcMar-Tigger","Piggybac","Other","L1",
		     "Gypsy","ERVL-MaLR","ERVL","ERVK","ERV1","ERV1","Alu") ]
barplot(t(x),beside=T,border=T,ylim=c(-.3,.3),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,cex.names=1,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3K9me3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()

##################################################################################################################

class=readRDS("h3_class_steph.rds")
fraction=readRDS("h3_fraction_steph.rds")
family=readRDS("h3_family_steph.rds")

pdf("h3_class_steph.pdf")
par(mar=c(4,1.1,1.1,6))
x=(class[,1]-class[,2])
names(x)=rownames(class)
x=sort(x)
x = x[names(x) %in% c("SINE","Other","LTR","LINE","DNA")]
barplot(t(x),beside=T,ylim=c(-.2,.2),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()

pdf("h3_fraction_steph.pdf",width=12)
par(mar=c(4,1.1,1.1,4))
x=(fraction[,1]-fraction[,2])
names(x)=rownames(fraction)
x=sort(x)
x = x[grep("RNA",names(x),invert=T)]
x = x[which(abs(x)>0.1)]
barplot(t(x),beside=T,border=T,
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,space=rep(2,length(x)),cex.names=.4,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()

#bottom, left, top and righ
pdf("h3_family_steph.pdf")
par(mar=c(7,1.1,1.1,6))
x=(family[,1]-family[,2])
names(x)=rownames(family)
x=sort(x)
x = x[names(x) %in% c("tRNA","hAT-Tip100?","hAT-Tip100","hAT-Charlie","hAT-Blackjack","hAT","TcMar-Tigger","Piggybac","Other","L1",
		     "Gypsy","ERVL-MaLR","ERVL","ERVK","ERV1","ERV1","Alu") ]
barplot(t(x),beside=T,border=T,ylim=c(-.3,.3),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,cex.names=1,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()
