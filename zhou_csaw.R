
require(csaw)

param <- readParam(minq=10)
data <- windowCounts(bam.files, ext=110, width=10, param=param)

 require(DESeq2)

binned <- windowCounts(bam.files, bin=TRUE, width=10000, param=param)

regionCounts(bam.files, regions, ext=100, param=readParam())
