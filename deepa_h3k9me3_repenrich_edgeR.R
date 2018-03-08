
# EdgeR 

library('edgeR')

# In the case of seperate outputs, load the RepEnrich results - fraction counts
#h3_siC <- read.delim('/home/roberto/deepa/h3k9me3/repenrich/C-H3_fraction_counts.txt', header=FALSE)
#h3_siK <- read.delim('/home/roberto/deepa/h3k9me3/repenrich/K-H3_fraction_counts.txt', header=FALSE)
h3k9me3_siC <- read.delim('/home/roberto/deepa/h3k9me3/repenrich/C-k9me3_fraction_counts.txt', header=FALSE)
h3k9me3_siK <- read.delim('/home/roberto/deepa/h3k9me3/repenrich/K-k9me3_fraction_counts.txt', header=FALSE)

h3k9me3_siC_class <- read.delim('/home/roberto/deepa/h3k9me3/repenrich/C-k9me3_class_fraction_counts.txt', header=FALSE)
h3k9me3_siK_class <- read.delim('/home/roberto/deepa/h3k9me3/repenrich/K-k9me3_class_fraction_counts.txt', header=FALSE)

h3k9me3_siC_family <- read.delim('/home/roberto/deepa/h3k9me3/repenrich/C-k9me3_family_fraction_counts.txt', header=FALSE)
h3k9me3_siK_family <- read.delim('/home/roberto/deepa/h3k9me3/repenrich/K-k9me3_family_fraction_counts.txt', header=FALSE)

##################
#' Build a counts table
counts <- data.frame(
  row.names = h3k9me3_siC[,1],  
  h3k9me3_siC = h3k9me3_siC[,4], h3k9me3_siK = h3k9me3_siK[,4]
)

meta <- data.frame(
	row.names=colnames(counts),
	condition=c("h3k9me3_siC","h3k9me3_siK"),
	libsize=c(2501647,2326201)
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
	libsize=c(2501647,2326201)
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
	libsize=c(2501647,2326201)
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

saveRDS(class,"h3k9me3_class.rds")
saveRDS(fraction,"h3k9me3_fraction.rds")
saveRDS(family,"h3k9me3_family.rds")
