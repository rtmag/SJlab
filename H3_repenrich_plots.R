
library('edgeR')

# In the case of seperate outputs, load the RepEnrich results - fraction counts
h3k9me3_siC <- read.delim('C-H3_fraction_counts.txt', header=FALSE)
h3k9me3_siK <- read.delim('K-H3_fraction_counts.txt', header=FALSE)

h3k9me3_siC_class <- read.delim('C-H3_class_fraction_counts.txt', header=FALSE)
h3k9me3_siK_class <- read.delim('K-H3_class_fraction_counts.txt', header=FALSE)

h3k9me3_siC_family <- read.delim('C-H3_family_fraction_counts.txt', header=FALSE)
h3k9me3_siK_family <- read.delim('K-H3_family_fraction_counts.txt', header=FALSE)

##################
#' Build a counts table
counts <- data.frame(
  row.names = h3k9me3_siC[,1],  
  h3k9me3_siC = h3k9me3_siC[,4], h3k9me3_siK = h3k9me3_siK[,4]
)

meta <- data.frame(
	row.names=colnames(counts),
	condition=c("h3k9me3_siC","h3k9me3_siK"),
	libsize=c(143248051,139597425)
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
	libsize=c(143248051,139597425)
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
	libsize=c(143248051,139597425)
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

saveRDS(class,"h3_class.rds")
saveRDS(fraction,"h3_fraction.rds")
saveRDS(family,"h3_family.rds")

##



##########################################################
class=readRDS("h3_class.rds")
fraction=readRDS("h3_fraction.rds")
family=readRDS("h3_family.rds")

postscript("h3_class.ps")
par(mar=c(4,1.1,1.1,6))
x=(class[,1]-class[,2])
names(x)=rownames(class)
x=sort(x)
x = x[names(x) %in% c("SINE","Other","LTR","LINE","DNA")]
barplot(t(x),beside=T,ylim=c(-.5,.1),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()

postscript("h3_fraction.ps",width=12)
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
postscript("h3_family.ps")
par(mar=c(7,1.1,1.1,6))
x=(family[,1]-family[,2])
names(x)=rownames(family)
x=sort(x)
x = x[names(x) %in% c("tRNA","hAT-Tip100?","hAT-Tip100","hAT-Charlie","hAT-Blackjack","hAT","TcMar-Tigger","Piggybac","Other","L1",
		     "Gypsy","ERVL-MaLR","ERVL","ERVK","ERV1","ERV1","Alu") ]
barplot(t(x),beside=T,border=T,ylim=c(-.1,.4),
	col=ifelse(x>0,"indianred1","lightblue3"),las=2,cex.names=1,axes = FALSE)
axis(4)
mtext("Log2FC Normalized H3 fragment counts ( siControl / siTIP60 )", 4, line = 2)
tick =seq(1,(length(x)*2-1),by=2)+.5
abline(h=0)
box()
dev.off()
