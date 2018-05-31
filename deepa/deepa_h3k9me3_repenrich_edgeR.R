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


# Build a DGE object for the GLM
y <- DGEList(counts=counts, lib.size=libsize)

# Normalize the data
y <- calcNormFactors(y)
y$samples
plotMDS(y)

# Estimate the variance
y <- estimateGLMCommonDisp(y, design)
y <- estimateGLMTrendedDisp(y, design)
y <- estimateGLMTagwiseDisp(y, design)
plotBCV(y)

# Build an object to contain the normalized read abundance
logcpm <- cpm(y, log=TRUE, lib.size=libsize)
logcpm <- as.data.frame(logcpm)
colnames(logcpm) <- factor(meta$condition)

# Conduct fitting of the GLM
yfit <- glmFit(y, design)

# Initialize result matrices to contain the results of the GLM
results <- matrix(nrow=dim(counts)[1],ncol=0)
logfc <- matrix(nrow=dim(counts)[1],ncol=0)


# Make the comparisons for the GLM
my.contrasts <- makeContrasts( siC_siK_h3k9me3 =  siC_h3k9me3 - siK_h3k9me3,
			      siC_siK_h3 = siC_h3 - siK_h3,
			      levels = design )  

# Define the contrasts used in the comparisons
allcontrasts = c(
	"siC_siK_h3k9me3",
	"siC_siK_h3"
)


# Conduct a for loop that will do the fitting of the GLM for each comparison
# Put the results into the results objects
for(current_contrast in allcontrasts) {
	lrt <- glmLRT(yfit, contrast=my.contrasts[,current_contrast])
	plotSmear(lrt, de.tags=rownames(y))
	title(current_contrast)
	res <- topTags(lrt,n=dim(c)[1],sort.by="none")$table
	colnames(res) <- paste(colnames(res),current_contrast,sep=".")
	results <- cbind(results,res[,c(1,5)])
	logfc <- cbind(logfc,res[c(1)])
}

# Add the repeat types back into the results.
# We should still have the same order as the input data
results$class <- siC_r1[,2]
results$type <- siC_r1[,3]

# Sort the results table by the logFC
results <- results[with(results, order(-abs(logFC.siC_siK))), ]
results <- cbind(results,rownames(results))
colnames(results)[7]="repeats"
# Save the results
write.table(results, 'results.txt', quote=FALSE, sep="\t")
results_ori=results


#FDR 5%
results=results_ori

for(current_contrast in allcontrasts) {
  logFC <- results[ results[, paste0("FDR.", current_contrast)]<0.05, 
		   paste0("logFC.", current_contrast)]
  # Plot the repeat classes
	
postscript(paste(current_contrast,"_class_replicates_repenrich_FDR_5_noFilter.ps",sep=""))
  classes <- with(results[results[, paste0("FDR.", current_contrast)]<0.05,], reorder(class, -logFC, median))
  par(mar=c(6,10,4,1))
  boxplot(logFC ~ as.vector(classes), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Class",current_contrast,"FDR 5%") )
  abline(v=0)
dev.off()
	
postscript(paste(current_contrast,"_type_replicates_repenrich_FDR_5_noFilter.ps",sep=""))
  # Plot the repeat types
	
	  par(mar=c(6,10,4,1))
  types <- with(results[results[, paste0("FDR.", current_contrast)]<0.05,], reorder(type, -logFC, median))
    boxplot(logFC ~ as.vector(types), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Type",current_contrast,"FDR 5%") )
  abline(v=0)
dev.off()

postscript(paste(current_contrast,"_repeats_replicates_repenrich_FDR_5_noFilter.ps",sep=""))
	#plot repeats
		  par(mar=c(6,10,4,1),cex.axis=.4)
  repe <- with(results[results[, paste0("FDR.", current_contrast)]<0.05,], reorder(repeats, -logFC, median))
boxplot(logFC ~ as.vector(repe), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Repeat",current_contrast,"FDR 5%"))
  abline(v=0)
		  par(mar=c(6,10,4,1),cex.axis=1)
	dev.off()

}
