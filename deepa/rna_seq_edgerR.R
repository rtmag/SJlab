#FDR 5%
results=results_ori

for(current_contrast in allcontrasts) {
  logFC <- results[ results[, paste0("FDR.", current_contrast)]<0.05, 
		   paste0("logFC.", current_contrast)]
  # Plot the repeat classes
	
pdf(paste(current_contrast,"_class_replicates_repenrich_FDR_5_noFilter.pdf",sep=""))
  classes <- with(results[results[, paste0("FDR.", current_contrast)]<0.05,], reorder(class, -logFC, median))
  par(mar=c(6,10,4,1))
  boxplot(logFC ~ as.vector(classes), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Class",current_contrast,"FDR 5%") )
  abline(v=0)
dev.off()
	
pdf(paste(current_contrast,"_type_replicates_repenrich_FDR_5_noFilter.pdf",sep=""))
  # Plot the repeat types
	
	  par(mar=c(6,10,4,1))
  types <- with(results[results[, paste0("FDR.", current_contrast)]<0.05,], reorder(type, -logFC, median))
    boxplot(logFC ~ as.vector(types), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Type",current_contrast,"FDR 5%") )
  abline(v=0)
dev.off()

pdf(paste(current_contrast,"_repeats_replicates_repenrich_FDR_5_noFilter.pdf",sep=""))
	#plot repeats
		  par(mar=c(6,10,4,1),cex.axis=.4)
  repe <- with(results[results[, paste0("FDR.", current_contrast)]<0.05,], reorder(repeats, -logFC, median))
boxplot(logFC ~ as.vector(repe), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Repeat",current_contrast,"FDR 5%"))
  abline(v=0)
		  par(mar=c(6,10,4,1),cex.axis=1)
	dev.off()

}
##################################################################################################################################



results=results_ori
#FDR 5% Filtered
for(current_contrast in allcontrasts) {
  results=results[!(results[,5] %in% c("srpRNA", "rRNA", "snRNA", "tRNA", "scRNA", "Satellite")),]
  
  logFC <- results[ results[, paste0("FDR.", current_contrast)]<0.05, 
		   paste0("logFC.", current_contrast)]
  # Plot the repeat classes
	
pdf(paste(current_contrast,"_class_replicates_repenrich_FDR_5_Filtered.pdf",sep=""))
  classes <- with(results[results[, paste0("FDR.", current_contrast)]<0.05,], reorder(class, -logFC, median))
  par(mar=c(6,10,4,1))
  boxplot(logFC ~ as.vector(classes), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Class",current_contrast,"FDR 5%") )
  abline(v=0)
dev.off()
	
pdf(paste(current_contrast,"_type_replicates_repenrich_FDR_5_Filtered.pdf",sep=""))
  # Plot the repeat types	
	  par(mar=c(6,10,4,1))
  types <- with(results[results[, paste0("FDR.", current_contrast)]<0.05,], reorder(type, -logFC, median))
    boxplot(logFC ~ as.vector(types), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Type",current_contrast,"FDR 5%") )
  abline(v=0)
dev.off()

pdf(paste(current_contrast,"_repeats_replicates_repenrich_FDR_5_Filtered.pdf",sep=""))
	#plot repeats
		  par(mar=c(6,10,4,1),cex.axis=.4)
  repe <- with(results[results[, paste0("FDR.", current_contrast)]<0.05,], reorder(repeats, -logFC, median))
boxplot(logFC ~ as.vector(repe), data=results, outline=FALSE, horizontal=TRUE,
          las=2, xlab="log2(Fold Change)", main=paste("Repeat",current_contrast,"FDR 5%"))
  abline(v=0)
		  par(mar=c(6,10,4,1),cex.axis=1)
	dev.off()
}



####

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
	dev.off()

}
