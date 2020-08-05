options(scipen=999)
data <- read.table("PSI_download_BRCA_fromShreshs.txt",header=T) # reading table
data[data=="null"] <- NA
i_normal <- grep("Norm",colnames(data)) # index where norm is in the name
i_tumor <- i_normal - 1 # index where matched tumor samples are 
exon1_sub <- data[1,i_tumor] - data[1,i_normal] # subs
plot(density(as.numeric(exon1_sub[1,]),na.rm=T))

exon2_sub <- data[2,i_tumor] - data[2,i_normal] # subs
exon2_sub <- as.numeric(exon2_sub[1,])
plot(density(as.numeric(exon2_sub[1,]),na.rm=T))


color_vector <- c(rep("salmon",sum(sort(exon2_sub)<0)), rep("lightblue3",sum(sort(exon2_sub)>0)))
barplot(sort(exon2_sub),ylim=c(-.7,.2),las=2,ylab="Tumor - Normal", col=color_vector ,xlab = "113 BRCA matched Normal/Tumor samples")
abline(h=0)
##########################################################################################################################################################################

# TEST WITH ALL THE SAMPLES IN THE COHORT


data_patients <- data[ 2, 11:dim(data)[2] ]
data_patients_numeric <- as.numeric(as.matrix(data_patients))
ix_order <- order(data_patients_numeric)
data_patients_numeric_sorted <- data_patients_numeric[ix_order] #rearrange numeric values

colNames_data_ix <- colnames(data_patients)[ix_order] #rearrange column names as well

ix_normal <- grep("Norm", colNames_data_ix)

color_vector <- rep("lightblue3",length(colNames_data_ix))
color_vector[ix_normal] <- "salmon"

pdf("test.pdf",width=77)
barplot(data_patients_numeric_sorted,las=2,ylab="Tumor - Normal", col=color_vector ,xlab = "1.3K BRCA samples")
abline(h=0)
dev.off()

##########################################################################################################################################################################
# jitter plot 
library(ggplot2)

data_patients <- data[ 2, 11:dim(data)[2] ]
col_jit <- colnames(data_patients)
col_jit[grep("Norm",col_jit)] <- "Normal"
col_jit[grep("Norm",col_jit,invert=T)] <- "Tumor"
data_patients_numeric <- as.numeric(as.matrix(data_patients))

data_box <- data.frame(sample = col_jit, value = data_patients_numeric)

pdf("jitterplot.pdf")
stripchart(value ~ sample, vertical = TRUE, data = data_box, jitter = 0.3, ylab = expression('ITAG9 exon skipping'),
    method = "jitter", pch = 20, col = alpha(colour='red',alpha=.5),cex = 2)
boxplot(value ~ sample, data = data_box,add=T,lwd=4)
dev.off()

