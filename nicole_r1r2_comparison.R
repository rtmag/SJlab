library(DESeq2)
countData=read.csv("r1r2_counts.csv",row.names=1)


# 1. LPCX-siC vs TIP60-siC in both r1 and r2

design<-data.frame(experiment=colnames(countData[,c(1,3,5,7)]), batch = c("r1","r1","r2","r2"),
                                            vector = c("LPCX","TIP60", "LPCX","TIP60") )

dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(1,3,5,7)], colData = design, design = ~ batch + vector )
dLRT <- DESeq(dLRT, test="LRT",full= ~ batch + vector , reduced=~ batch )
dDif_res <- results(dLRT,contrast=c("vector","LPCX","TIP60"))

export=dDif_res[which(dDif_res$padj<0.05 & abs(dDif_res$log2FoldChange)>.5),]
write.csv(export,"LPCX-siC_TIP60-siC_r1r2_DEG_revised_log2FC-0.5_padj-0.05.csv")
write.csv(dDif_res,"LPCX-siC_TIP60-siC_r1r2_DEG_revised_all.csv")

# 2. TIP60-siC vs TIP60-siK in both r1 and r2.

design<-data.frame(experiment=colnames(countData[,c(3,4,7,8)]), batch = c("r1","r1","r2","r2"),
                                            treatment = c("siC","siK", "siC","siK") )

dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(3,4,7,8)], colData = design, design = ~ batch + treatment )
dLRT <- DESeq(dLRT, test="LRT",full= ~ batch + treatment , reduced=~ batch )
dDif_res <- results(dLRT,contrast=c("treatment","siC","siK"))

export=dDif_res[which(dDif_res$padj<0.05 & abs(dDif_res$log2FoldChange)>.5),]
write.csv(export,"TIP60-siC_TIP60-siK_r1r2_DEG_revised_log2FC-0.5_padj-0.05.csv")
write.csv(dDif_res,"TIP60-siC_TIP60-siK_r1r2_DEG_revised_all.csv")


# 3 LPCX
design<-data.frame(experiment=colnames(countData[,c(1,2,5,6)]), batch = c("r1","r1","r2","r2"),
                                            treatment = c("LPCX_siC","LPCX_siK", "LPCX_siC","LPCX_siK") )

dLRT <- DESeqDataSetFromMatrix(countData = countData[,c(1,2,5,6)], colData = design, design = ~ batch + treatment )
dLRT <- DESeq(dLRT, test="LRT",full= ~ batch + treatment , reduced=~ batch )
dDif_res <- results(dLRT,contrast=c("treatment","LPCX_siC","LPCX_siK"))

export=dDif_res[which(dDif_res$padj<0.05 & abs(dDif_res$log2FoldChange)>.5),]
write.csv(export,"LPCX-siC_LPCX-siK_r1r2_DEG_revised_log2FC-0.5_padj-0.05.csv")
write.csv(dDif_res,"LPCX-siC_LPCX-siK_r1r2_DEG_revised_all.csv")

#####################




# r1 LPCX VS TIP60 
dds <- DESeqDataSetFromMatrix(
       countData = countData[,c(1,3)],
       colData = data.frame(group=c("LPCX","TIP60")),
       design = ~ group)
rld <- rlogTransformation( dds )
res1 <- data.frame(rLogFC = assay(rld)[,2] - assay(rld)[,1],Log2FC= log2((countData[,3]+1)/sum(countData[,3]))-log2((countData[,1]+1)/sum(countData[,1])) ,LPCX=countData[,1],TIP60=countData[,3],LPCX_norm=log2((countData[,1]+1)/sum(countData[,1])),TIP60_norm=log2((countData[,3]+1)/sum(countData[,3])))
res1.1=res1[which(res1[,3]>300 | res1[,4]>300),]
head(res1[order(-abs(res1$Log2FC)),],100)
head(res1.1[order(-abs(res1.1$Log2FC)),],10)
res1

# r2 LPCX VS TIP60 
dds <- DESeqDataSetFromMatrix(
       countData = countData[,c(5,7)],
       colData = data.frame(group=c("LPCX","TIP60")),
       design = ~ group)
rld <- rlogTransformation( dds )
res2 <- data.frame(rLogFC = assay(rld)[,2] - assay(rld)[,1],Log2FC= log2((countData[,7]+1)/sum(countData[,7]))-log2((countData[,5]+1)/sum(countData[,5])) ,LPCX=countData[,5],TIP60=countData[,7],LPCX_norm=log2((countData[,5]+1)/sum(countData[,5])),TIP60_norm=log2((countData[,7]+1)/sum(countData[,7])))
res2.1=res2[which(res2[,3]>300 | res2[,4]>300),]
head(res2[order(-abs(res2$Log2FC)),],100)
head(res2.1[order(-abs(res2.1$Log2FC)),],10)

# r1 TIP60_siC VS TIP60_siK

dds <- DESeqDataSetFromMatrix(
       countData = countData[,c(3,4)],
       colData = data.frame(group=c("siC","siK")),
       design = ~ group)
rld <- rlogTransformation( dds )
res3 <- data.frame(rLogFC = assay(rld)[,2] - assay(rld)[,1],Log2FC= log2((countData[,4]+1)/sum(countData[,4]))-log2((countData[,3]+1)/sum(countData[,3])) ,siC=countData[,4],siK=countData[,3],siC_norm=log2((countData[,3]+1)/sum(countData[,3])),siK_norm=log2((countData[,4]+1)/sum(countData[,4])))
res3.1=res3[which(res3[,3]>300 | res3[,4]>300),]
#head(res3[order(-abs(res3$Log2FC)),],100)
head(res3.1[order(-abs(res3.1$Log2FC)),],10)

# r2 TIP60_siC VS TIP60_siK

dds <- DESeqDataSetFromMatrix(
       countData = countData[,c(7,8)],
       colData = data.frame(group=c("siC","siK")),
       design = ~ group)
rld <- rlogTransformation( dds )
res4 <- data.frame(rLogFC = assay(rld)[,2] - assay(rld)[,1],Log2FC= log2((countData[,8]+1)/sum(countData[,8]))-log2((countData[,7]+1)/sum(countData[,7])) ,siC=countData[,7],siK=countData[,8],siC_norm=log2((countData[,7]+1)/sum(countData[,7])),siK_norm=log2((countData[,8]+1)/sum(countData[,8])))
res4.1=res4[which(res4[,3]>300 | res4[,4]>300),]
#head(res4[order(-abs(res4$Log2FC)),],100)
head(res4.1[order(-abs(res4.1$Log2FC)),],10)
#####################
