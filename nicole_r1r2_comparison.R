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
dLRT <- DESeq(dLRT, test="LRT",full= ~ batch + treatment , reduced=~ treatment )
dDif_res <- results(dLRT,contrast=c("treatment","siC","siK"))

export=dDif_res[which(dDif_res$padj<0.05 & abs(dDif_res$log2FoldChange)>.5),]
write.csv(export,"TIP60-siC_TIP60-siK_r1r2_DEG_revised_log2FC-0.5_padj-0.05.csv")
write.csv(dDif_res,"TIP60-siC_TIP60-siK_r1r2_DEG_revised_all.csv")
