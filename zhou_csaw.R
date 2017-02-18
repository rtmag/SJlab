 
bed_to_granges <- function(file){
   df <- read.table(file,
                    header=F,
                    stringsAsFactors=F)
 
   if(length(df) > 6){
      df <- df[,-c(7:length(df))]
   }
 
   if(length(df)<3){
      stop("File has less than 3 columns")
   }
 
   header <- c('chr','start','end','id','score','strand')
   names(df) <- header[1:length(names(df))]
 
   if('strand' %in% colnames(df)){
      df$strand <- gsub(pattern="[^+-]+", replacement = '*', x = df$strand)
   }
 
   library("GenomicRanges")
 
   if(length(df)==3){
      gr <- with(df, GRanges(chr, IRanges(start, end)))
   } else if (length(df)==4){
      gr <- with(df, GRanges(chr, IRanges(start, end), id=id))
   } else if (length(df)==5){
      gr <- with(df, GRanges(chr, IRanges(start, end), id=id, score=score))
   } else if (length(df)==6){
      gr <- with(df, GRanges(chr, IRanges(start, end), id=id, score=score, strand=strand))
   }
   return(gr)
}


require(csaw)

blacklist=bed_to_granges("wgEncodeHg19ConsensusSignalArtifactRegions.bed")
param <- readParam(minq=10,discard=blacklist)
bam.files <- c("CA2_rmdup.bam", "TA2_rmdup.bam", "Cac_rmdup.bam", "Tac_rmdup.bam")

binned <- windowCounts(bam.files, bin=TRUE, width=10000, param=param)

normfacs <- normOffsets(binned)

#cat *broadPeak| sort -k1,1 -k2,2n|bedtools merge -i - >Broadpeak_merged.bed

#regions=bed_to_granges("BROADPEAK_TSS.bed")
regions=bed_to_granges("BROADPEAK_741.bed")
 counts <- regionCounts(bam.files, regions, ext=300, param=param)
countData=assay(counts)
colnames(countData)=bam.files

require(DESeq2)

colData <- data.frame(group=colnames(countData))
dds <- DESeqDataSetFromMatrix(
       countData = countData,
       colData = colData,
       design = ~ group)
dds <- estimateSizeFactors(dds)
sizeFactors(dds) <- normfacs


rld <- rlogTransformation( dds )
