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
	condition=c("siC","siC","siK","siK","DMSO","DMSO","JQ1","JQ1"),
	libsize=c(4254957,6045550,6563529,6769278,5100955,4492173,6613606,6288050)
)

# Define the library size and conditions for the GLM
libsize <- meta$libsize
condition <- factor(meta$condition)
design <- model.matrix(~0+condition)
colnames(design) <- levels(meta$condition)


