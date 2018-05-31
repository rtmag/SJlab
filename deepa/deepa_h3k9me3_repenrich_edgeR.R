# EdgeR 

library('edgeR')

# In the case of a pre-assembled file of the fraction count output do the following:
# counts <- read.csv(file = "counts.csv")

# In the case of seperate outputs, load the RepEnrich results - fraction counts
siC_h3k9me3_novogene <- read.delim('/home/rtm/CSI/sjlab/repenrich/siControl_H3K9me3_novogene_fraction_counts.txt', header=FALSE)
siC_h3k9me3_steph <- read.delim('/home/rtm/CSI/sjlab/repenrich/siControl_H3K9me3_steph_fraction_counts.txt', header=FALSE)
siC_h3_novogene <- read.delim('/home/rtm/CSI/sjlab/repenrich/siControl_H3_novogene_fraction_counts.txt', header=FALSE)
siC_h3_steph <- read.delim('/home/rtm/CSI/sjlab/repenrich/siControl_H3_steph_fraction_counts.txt', header=FALSE)

siK_h3k9me3_novogene <- read.delim('/home/rtm/CSI/sjlab/repenrich/siTIP60_H3K9me3_novogene_fraction_counts.txt', header=FALSE)
siK_h3k9me3_steph <- read.delim('/home/rtm/CSI/sjlab/repenrich/siTIP60_H3K9me3_steph_fraction_counts.txt', header=FALSE)
siK_h3_novogene <- read.delim('/home/rtm/CSI/sjlab/repenrich/siTIP60_H3_novogene_fraction_counts.txt', header=FALSE)
siK_h3_steph <- read.delim('/home/rtm/CSI/sjlab/repenrich/siTIP60_H3_steph_fraction_counts.txt', header=FALSE)

##################
#' Build a counts table
counts <- data.frame(
  row.names = siC_h3k9me3_novogene[,1],  
  siC_h3k9me3_novogene = siC_h3k9me3_novogene[,4], siC_h3k9me3_steph = siC_h3k9me3_steph[,4], 
  siK_h3k9me3_novogene = siK_h3k9me3_novogene[,4], siK_h3k9me3_steph = siK_h3k9me3_steph[,4], 
  siC_h3_novogene = siC_h3_novogene[,4], siC_h3_steph = siC_h3_steph[,4],
  siK_h3_novogene = siK_h3_novogene[,4], siK_h3_steph = siK_h3_steph[,4]
)

# Build a meta data object. I am comparing young, old, and veryold mice.
# I manually input the total mapping reads for each sample.
# The total mapping reads are calculated using the bowtie logs:
# # of reads processed - # reads that failed to align
meta <- data.frame(
	row.names=colnames(counts),
	condition=c("siC_h3k9me3","siC_h3k9me3","siK_h3k9me3","siK_h3k9me3","siC_h3","siC_h3","siK_h3","siK_h3"),
	libsize=  c(73350175,       57558823,      76696799,     54267891,  74401979,59562768,76002273,57180974)
)

# Define the library size and conditions for the GLM
libsize <- meta$libsize
condition <- factor(meta$condition)
design <- model.matrix(~0+condition)
colnames(design) <- levels(meta$condition)


