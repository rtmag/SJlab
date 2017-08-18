pdf("PCA_without_rep2.pdf")

x=read.csv("PCA.csv",row.names=1,header=T)

y=cbind(as.numeric(x[,1]),
#        as.numeric(x[,2]),
        as.numeric(x[,3]),
        as.numeric(x[,4]),
#       as.numeric(x[,5]),
        as.numeric(x[,6])
       )

vy=apply(y,1,var)

which(vy==0)


ir.pca <- prcomp(t(y[-5620,]),
                 center = TRUE,
                 scale. = TRUE) 

sx=summary(ir.pca)

plot(ir.pca$x[,1],ir.pca$x[,2],col="white",xlab=paste("PCA1:",sx$importance[2,1]),ylab=paste("PCA2:",sx$importance[2,2]),xlim=c(-120,120))
text(ir.pca$x[,1],ir.pca$x[,2], labels=c("siC_rep1","siC_rep3","siE6_rep1","siE6_rep3"), cex= 0.7)

dev.off()
pdf("PCA.pdf")

y=cbind(as.numeric(x[,1]),
        as.numeric(x[,2]),
        as.numeric(x[,3]),
        as.numeric(x[,4]),
        as.numeric(x[,5]),
        as.numeric(x[,6])
       )

ir.pca <- prcomp(t(y),
                 center = TRUE,
                 scale. = TRUE) 

sx=summary(ir.pca)

plot(ir.pca$x[,1],ir.pca$x[,2],col="white",xlab=paste("PCA1:",sx$importance[2,1]),ylab=paste("PCA2:",sx$importance[2,2]))
text(ir.pca$x[,1],ir.pca$x[,2], labels=c("siC_rep1","siC_rep2","siC_rep3","siE6_rep1","siE6_rep2","siE6_rep3"), cex= 0.7)
dev.off()
