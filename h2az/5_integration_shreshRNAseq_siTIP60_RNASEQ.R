 h2_up = read.table("UP_H2AZ_525.txt",sep="\t")
 h2_dw = read.table("DOWN_H2AZ_436.txt",sep="\t")
 
 k5_up = read.table("Upreg_notShink.txt",sep="\t")
 k5_dw = read.table("Downreg_notShink.txt",sep="\t")
 
write.table(rownames(h2_dw[rownames(h2_dw) %in% k5_dw[,1],]),"h2_dw_k5_dw",sep="\t",quote=F,col.names=F,row.names=F)
write.table(rownames(h2_dw[rownames(h2_dw) %in% k5_up[,1],]),"h2_dw_k5_up",sep="\t",quote=F,col.names=F,row.names=F)
write.table(rownames(h2_up[rownames(h2_up) %in% k5_dw[,1],]),"h2_up_k5_dw",sep="\t",quote=F,col.names=F,row.names=F)
write.table(rownames(h2_up[rownames(h2_up) %in% k5_up[,1],]),"h2_up_k5_up",sep="\t",quote=F,col.names=F,row.names=F)
