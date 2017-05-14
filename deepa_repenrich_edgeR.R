# EdgeR 

library('edgeR')

# In the case of a pre-assembled file of the fraction count output do the following:
# counts <- read.csv(file = "counts.csv")

# In the case of seperate outputs, load the RepEnrich results - fraction counts
siC_r1 <- read.delim('HCT_siControl_HWN2YCCXX_L5_fraction_counts.txt', header=FALSE)
siC_r2 <- read.delim('HCT116_siC_fraction_counts.txt', header=FALSE)
siK_r1 <- read.delim('HCT_siK_HVNYLCCXX_L2_fraction_counts.txt', header=FALSE)
siK_r2 <- read.delim('HCT116_siK_fraction_counts.txt', header=FALSE)
dmso_r1 <- read.delim('HCT_DMSO_HWN2YCCXX_L2_fraction_counts.txt', header=FALSE)
dmso_r2 <- read.delim('HCT116_siC_DMSO_fraction_counts.txt', header=FALSE)
jq1_r1 <- read.delim('HCT_JQ1_HWN2YCCXX_L5_fraction_counts.txt', header=FALSE)
jq1_r2 <- read.delim('HCT116_siC_JQ1_fraction_counts.txt', header=FALSE)


##################
#' Build a counts table
counts <- data.frame(
  row.names = siC_r1[,1],  
  siC_r1 = siC_r1[,4], siC_r2 = siC_r2[,4], 
  siK_r1 = siK_r1[,4], siK_r2 = siK_r2[,4], 
  dmso_r1 = dmso_r1[,4], dmso_r2 = dmso_r2[,4],
  jq1_r1 = jq1_r1[,4], jq1_r2 = jq1_r2[,4]
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
my.contrasts <- makeContrasts( siC_siK =  siC - siK,
			      DMSO_JQ1 = DMSO - JQ1,
			      levels = design )  

# Define the contrasts used in the comparisons
allcontrasts = c(
	"siC_siK",
	"DMSO_JQ1"
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
#write.table(results, 'results.txt', quote=FALSE, sep="\t")

#FDR 5%
pdf("replicates_repenrich_FDR_5.pdf")
for(current_contrast in allcontrasts) {
  logFC <- results[ results[, paste0("FDR.", current_contrast)]<0.05, 
		   paste0("logFC.", current_contrast)]
  # Plot the repeat classes
  classes <- with(results[results[, paste0("FDR.", current_contrast)]<0.05,], reorder(class, -logFC, median))
  par(mar=c(6,10,4,1))
  boxplot(logFC ~ as.vector(classes), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Class",current_contrast,"FDR 5%") )
  abline(v=0)
  # Plot the repeat types
	
	  par(mar=c(6,10,4,1))
  types <- with(results[results[, paste0("FDR.", current_contrast)]<0.05,], reorder(type, -logFC, median))
    boxplot(logFC ~ as.vector(types), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Type",current_contrast,"FDR 5%") )
  abline(v=0)

	#plot repeats
		  par(mar=c(6,10,4,1),cex.axis=.4)
  repe <- with(results[results[, paste0("FDR.", current_contrast)]<0.05,], reorder(repeats, -logFC, median))
boxplot(logFC ~ as.vector(repe), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Repeat",current_contrast,"FDR 5%"))
  abline(v=0)
		  par(mar=c(6,10,4,1),cex.axis=1)
}
dev.off()


pdf("replicates_repenrich_NoFDR.pdf")
# Plot Fold Changes for repeat classes and types
for(current_contrast in allcontrasts) {
  logFC <- results[, paste0("logFC.", current_contrast)]
  # Plot the repeat classes
  classes <- with(results, reorder(class, -logFC, median))
  par(mar=c(6,10,4,1))
  boxplot(logFC ~ classes, data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log(Fold Change)", main=paste("Class",current_contrast))
  abline(v=0)
  # Plot the repeat types
  types <- with(results, reorder(type, -logFC, median))
  boxplot(logFC ~ types, data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log(Fold Change)", main=paste("Type",current_contrast) )
  abline(v=0)
		#plot repeats
		  par(mar=c(6,10,4,1),cex.axis=.4)
  repe <- with(results, reorder(repeats, -logFC, median))
boxplot(logFC ~ as.vector(repe), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Repeat",current_contrast))
  abline(v=0)
		  par(mar=c(6,10,4,1),cex.axis=1)
}
dev.off()
