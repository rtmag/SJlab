
annotatePeaks.pl H3_down.bed hg38 -annStats H3_down.annStats > H3_down.anno
annotatePeaks.pl H3_up.bed hg38 -annStats H3_up.annStats > H3_up.anno
annotatePeaks.pl k9me3_down.bed hg38 -annStats k9me3_down.annStats > k9me3_down.anno
annotatePeaks.pl k9me3_up.bed hg38 -annStats k9me3_up.annStats > k9me3_up.anno

#par(mar=c(5.1,4.1,4.1,7))
res=read.table(pipe("more Down_NT.annStats |grep -v '0.0'|cut -f1,2,4|tail -n +10"), sep="\t",header=F)

