trim_galore --illumina -o /home/roberto/h2az/chip_fastq/trim/ chipseq_INPUT_siControl.fastq.gz &
trim_galore --illumina -o /home/roberto/h2az/chip_fastq/trim/ chipseq_INPUT_siTIP60.fastq.gz &
trim_galore --illumina -o /home/roberto/h2az/chip_fastq/trim/ chipseq_ach2az_siControl.fastq.gz &
trim_galore --illumina -o /home/roberto/h2az/chip_fastq/trim/ chipseq_ach2az_siTIP60.fastq.gz &
trim_galore --illumina -o /home/roberto/h2az/chip_fastq/trim/ chipseq_h2az_siControl.fastq.gz &
trim_galore --illumina -o /home/roberto/h2az/chip_fastq/trim/ chipseq_h2az_siTIP60.fastq.gz &
##################################################################################################
/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno/ \
--readFilesCommand zcat \
--runThreadN 55 \
--alignIntronMax 1 \
--outFilterMismatchNoverLmax 0.09 \
--outFilterMultimapNmax 1 \
--alignEndsType EndToEnd \
--readFilesIn \
/home/roberto/h2az/chip_fastq/trim/chipseq_INPUT_siControl_trimmed.fq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/h2az/bam_chip/input_siControl_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno/ \
--readFilesCommand zcat \
--runThreadN 55 \
--alignIntronMax 1 \
--outFilterMismatchNoverLmax 0.09 \
--outFilterMultimapNmax 1 \
--alignEndsType EndToEnd \
--readFilesIn \
/home/roberto/h2az/chip_fastq/trim/chipseq_INPUT_siTIP60_trimmed.fq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/h2az/bam_chip/input_siTIP60_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno/ \
--readFilesCommand zcat \
--runThreadN 55 \
--alignIntronMax 1 \
--outFilterMismatchNoverLmax 0.09 \
--outFilterMultimapNmax 1 \
--alignEndsType EndToEnd \
--readFilesIn \
/home/roberto/h2az/chip_fastq/trim/chipseq_ach2az_siControl_trimmed.fq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/h2az/bam_chip/ach2az_siControl_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno/ \
--readFilesCommand zcat \
--runThreadN 55 \
--alignIntronMax 1 \
--outFilterMismatchNoverLmax 0.09 \
--outFilterMultimapNmax 1 \
--alignEndsType EndToEnd \
--readFilesIn \
/home/roberto/h2az/chip_fastq/trim/chipseq_ach2az_siTIP60_trimmed.fq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/h2az/bam_chip/ach2az_siTIP60_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno/ \
--readFilesCommand zcat \
--runThreadN 55 \
--alignIntronMax 1 \
--outFilterMismatchNoverLmax 0.09 \
--outFilterMultimapNmax 1 \
--alignEndsType EndToEnd \
--readFilesIn \
/home/roberto/h2az/chip_fastq/trim/chipseq_h2az_siControl_trimmed.fq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/h2az/bam_chip/h2az_siControl_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno/ \
--readFilesCommand zcat \
--runThreadN 55 \
--alignIntronMax 1 \
--outFilterMismatchNoverLmax 0.09 \
--outFilterMultimapNmax 1 \
--alignEndsType EndToEnd \
--readFilesIn \
/home/roberto/h2az/chip_fastq/trim/chipseq_h2az_siTIP60_trimmed.fq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/h2az/bam_chip/h2az_siTIP60_
##################################################################################################
java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/h2az/bam_chip/input_siControl_Aligned.sortedByCoord.out.bam \
O=/home/roberto/h2az/bam_chip/input_siControl_rmdup.bam \
M=/home/roberto/h2az/bam_chip/input_siControl_rmdup.mfile &

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/h2az/bam_chip/input_siTIP60_Aligned.sortedByCoord.out.bam \
O=/home/roberto/h2az/bam_chip/input_siTIP60_rmdup.bam \
M=/home/roberto/h2az/bam_chip/input_siTIP60_rmdup.mfile &

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/h2az/bam_chip/ach2az_siControl_Aligned.sortedByCoord.out.bam \
O=/home/roberto/h2az/bam_chip/ach2az_siControl_rmdup.bam \
M=/home/roberto/h2az/bam_chip/ach2az_siControl_rmdup.mfile &

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/h2az/bam_chip/ach2az_siTIP60_Aligned.sortedByCoord.out.bam \
O=/home/roberto/h2az/bam_chip/ach2az_siTIP60_rmdup.bam \
M=/home/roberto/h2az/bam_chip/ach2az_siTIP60_rmdup.mfile &

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/h2az/bam_chip/h2az_siControl_Aligned.sortedByCoord.out.bam \
O=/home/roberto/h2az/bam_chip/h2az_siControl_rmdup.bam \
M=/home/roberto/h2az/bam_chip/h2az_siControl_rmdup.mfile &

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/h2az/bam_chip/h2az_siTIP60_Aligned.sortedByCoord.out.bam \
O=/home/roberto/h2az/bam_chip/h2az_siTIP60_rmdup.bam \
M=/home/roberto/h2az/bam_chip/h2az_siTIP60_rmdup.mfile &
##################################################################################################

bamToBed -i ach2az_siControl_rmdup.bam > ../bed/ach2az_siControl_rmdup.bed &
bamToBed -i ach2az_siTIP60_rmdup.bam > ../bed/ach2az_siTIP60_rmdup.bed &
bamToBed -i input_siControl_rmdup.bam > ../bed/input_siControl_rmdup.bed &
bamToBed -i input_siTIP60_rmdup.bam > ../bed/input_siTIP60_rmdup.bed &

bamToBed -i h2az_siControl_rmdup.bam > ../bed/h2az_siControl_rmdup.bed &
bamToBed -i h2az_siTIP60_rmdup.bam > ../bed/h2az_siTIP60_rmdup.bed &

diffReps.pl --treatment ach2az_siTIP60_rmdup.bed --btr input_siTIP60_rmdup.bed \
--control ach2az_siControl_rmdup.bed --bco input_siControl_rmdup.bed \
--nohs --noanno --nsd 20 --chrlen /home/roberto/references/hg38.chrom.sizes \
--meth gt --report ach2az_sik_vs_siC_1000w_nsd20 --frag 100 --nproc 60 --window 1000 --pval 0.0001 &

diffReps.pl --treatment h2az_siTIP60_rmdup.bed --btr input_siTIP60_rmdup.bed \
--control h2az_siControl_rmdup.bed --bco input_siControl_rmdup.bed \
--nohs --noanno --nsd 2 --chrlen /home/roberto/references/hg38.chrom.sizes \
--meth gt --report h2az_sik_vs_siC_1000w_nsd2 --frag 100 --nproc 60 --window 1000 --pval 0.0001 &
##################################################################################################
samtools index h2az_siControl_rmdup.bam &
samtools index h2az_siTIP60_rmdup.bam &
samtools index ach2az_siControl_rmdup.bam &
samtools index ach2az_siTIP60_rmdup.bam &
##################################################################################################
bamCoverage -p max -bs 1 --normalizeUsing CPM -b /home/roberto/h2az/bam_chip/h2az_siControl_rmdup.bam \
-o /home/roberto/h2az/bw/h2az_siControl.bw &

bamCoverage -p max -bs 1 --normalizeUsing CPM -b /home/roberto/h2az/bam_chip/h2az_siTIP60_rmdup.bam \
-o /home/roberto/h2az/bw/h2az_siTIP60.bw &

bamCoverage -p max -bs 1 --normalizeUsing CPM -b /home/roberto/h2az/bam_chip/ach2az_siControl_rmdup.bam \
-o /home/roberto/h2az/bw/ach2az_siControl.bw &

bamCoverage -p max -bs 1 --normalizeUsing CPM -b /home/roberto/h2az/bam_chip/ach2az_siTIP60_rmdup.bam \
-o /home/roberto/h2az/bw/ach2az_siTIP60.bw &
#################################################################################################
annotatePeaks.pl ach2az_sik_vs_siC_down_123.bed hg38 -annStats ach2az_sik_vs_siC_down_123.annStats > ach2az_sik_vs_siC_down_123.bed.anno
#################################################################################################
macs2 callpeak -g hs -q 0.05 --keep-dup auto --broad -n ach2az_siControl_broad --outdir /home/roberto/h2az/macs2 \
-t /home/roberto/h2az/bam_chip/ach2az_siControl_rmdup.bam -c /home/roberto/h2az/bam_chip/input_siControl_rmdup.bam &

macs2 callpeak -g hs -q 0.05 --keep-dup auto --broad -n ach2az_siTIP60_broad --outdir /home/roberto/h2az/macs2 \
-t /home/roberto/h2az/bam_chip/ach2az_siTIP60_rmdup.bam -c /home/roberto/h2az/bam_chip/input_siTIP60_rmdup.bam &

macs2 callpeak -g hs -q 0.05 --keep-dup auto --broad -n h2az_siControl_broad --outdir /home/roberto/h2az/macs2 \
-t /home/roberto/h2az/bam_chip/h2az_siControl_rmdup.bam -c /home/roberto/h2az/bam_chip/input_siControl_rmdup.bam &

macs2 callpeak -g hs -q 0.05 --keep-dup auto --broad -n h2az_siTIP60_broad --outdir /home/roberto/h2az/macs2 \
-t /home/roberto/h2az/bam_chip/h2az_siTIP60_rmdup.bam -c /home/roberto/h2az/bam_chip/input_siTIP60_rmdup.bam &
##################################################################################################################
macs2 callpeak -g hs -q 0.05 --keep-dup auto --call-summits -n ach2az_siControl_narrow --outdir /home/roberto/h2az/macs2 \
-t /home/roberto/h2az/bam_chip/ach2az_siControl_rmdup.bam -c /home/roberto/h2az/bam_chip/input_siControl_rmdup.bam &

macs2 callpeak -g hs -q 0.05 --keep-dup auto --call-summits -n ach2az_siTIP60_narrow --outdir /home/roberto/h2az/macs2 \
-t /home/roberto/h2az/bam_chip/ach2az_siTIP60_rmdup.bam -c /home/roberto/h2az/bam_chip/input_siTIP60_rmdup.bam &

macs2 callpeak -g hs -q 0.05 --keep-dup auto --call-summits -n h2az_siControl_narrow --outdir /home/roberto/h2az/macs2 \
-t /home/roberto/h2az/bam_chip/h2az_siControl_rmdup.bam -c /home/roberto/h2az/bam_chip/input_siControl_rmdup.bam &

macs2 callpeak -g hs -q 0.05 --keep-dup auto --call-summits -n h2az_siTIP60_narrow --outdir /home/roberto/h2az/macs2 \
-t /home/roberto/h2az/bam_chip/h2az_siTIP60_rmdup.bam -c /home/roberto/h2az/bam_chip/input_siTIP60_rmdup.bam &
#################################################################################################
more h2az_sik_vs_siC_1000w_nsd2|awk -F"\t" '{if($14<0.05){if($7>50 || $8>50){ if(sqrt($12^2)>1 && $14<0.05){print $0} }} }' |cut -f1,2,3,11,12 >  h2az_sik_vs_siC_1000w_nsd2_log2fc1_fdr5.bed  

h2az_sik_vs_siC_1000w_nsd2_log2fc1_fdr5.bed

computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/h2az_siControl_rmdup.smooth.qnor.bw \
/home/roberto/h2az/bw/h2az_siTIP60_rmdup.smooth.qnor.bw \
-R /home/roberto/h2az/bed/h2az_sik_vs_siC_1000w_nsd2_log2fc1_fdr5.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/h2az_danpos_downMostly.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "Center" --colorMap Blues \
-m /home/roberto/h2az/heatmap/h2az_danpos_downMostly.mat --regionsLabel "peaks" \
 --samplesLabel "siControl" "siTIP60"  \
-out /home/roberto/h2az/heatmap/h2az_danpos.pdf
## AC
computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/ach2az_siControl.bw \
/home/roberto/h2az/bw/ach2az_siTIP60.bw \
-R /home/roberto/h2az/bed/h2az_sik_vs_siC_1000w_nsd2_log2fc1_fdr5.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/ach2az_danpos_downMostly.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "Center" --colorMap Blues \
-m /home/roberto/h2az/heatmap/ach2az_danpos_downMostly.mat --regionsLabel "peaks" \
 --samplesLabel "siControl" "siTIP60"  \
-out /home/roberto/h2az/heatmap/ach2az_danpos_downMostly.pdf

pdfjam h2az_danpos.pdf ach2az_danpos_downMostly.pdf --nup 2x1 --landscape -o ./diff_h2az.pdf
#################################################################################################
#################################################################################################
#################################################################################################
# DANPOS

computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/h2az_siControl_rmdup.smooth.qnor.bw \
/home/roberto/h2az/bw/h2az_siTIP60_rmdup.smooth.qnor.bw \
/home/roberto/h2az/bw/ach2az_siControl_rmdup.smooth.qnor.bw \
/home/roberto/h2az/bw/ach2az_siTIP60_rmdup.smooth.qnor.bw \
-R /home/roberto/h2az/bed/h2az_sik_vs_siC_1000w_nsd2_log2fc1_fdr5.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/h2az_danpos_downMostly_acdanpos.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "Center" --colorMap Blues \
-m /home/roberto/h2az/heatmap/h2az_danpos_downMostly_acdanpos.mat --regionsLabel "peaks" \
 --samplesLabel "H2AZ siControl" "H2AZ siTIP60" "acH2AZ siControl" "acH2AZ siTIP60"  \
-out /home/roberto/h2az/heatmap/h2az_danpos_downMostly_acdanpos.pdf

#################################################################################################


computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/h2az_siControl.bw \
/home/roberto/h2az/bw/h2az_siTIP60.bw \
/home/roberto/h2az/bw/ach2az_siControl.bw \
/home/roberto/h2az/bw/ach2az_siTIP60.bw \
-R /home/roberto/h2az/bed/h2az_sik_vs_siC_1000w_nsd2_log2fc1_fdr5.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/h2az_downMostly.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "Center" --colorMap Blues \
-m /home/roberto/h2az/heatmap/h2az_downMostly.mat --regionsLabel "peaks" \
 --samplesLabel "H2AZ siControl" "H2AZ siTIP60" "acH2AZ siControl" "acH2AZ siTIP60"  \
-out /home/roberto/h2az/heatmap/h2az_downMostly.pdf


computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/h2az_siControl.bw \
/home/roberto/h2az/bw/h2az_siTIP60.bw \
-R /home/roberto/h2az/bed/h2az_sik_vs_siC_1000w_nsd2_log2fc1_fdr5.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/h2az_downMostly.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "Center" --colorMap Blues \
-m /home/roberto/h2az/heatmap/h2az_downMostly.mat --regionsLabel "peaks" \
 --samplesLabel "H2AZ siControl" "H2AZ siTIP60"  \
-out /home/roberto/h2az/heatmap/h2az_downMostly_onlyh2az.pdf
#################################################################################################
#################################################################################################
#################################################################################################
#################################################################################################

grep "Up" /home/roberto/h2az/bed/ach2az_sik_vs_siC_1000w_nsd20 > /home/roberto/h2az/bed/ach2az_sik_vs_siC_1000w_nsd20_deeptools.bed
echo "#High acH2AZ in siK" >> /home/roberto/h2az/bed/ach2az_sik_vs_siC_1000w_nsd20_deeptools.bed
grep "Down" /home/roberto/h2az/bed/ach2az_sik_vs_siC_1000w_nsd20 >> /home/roberto/h2az/bed/ach2az_sik_vs_siC_1000w_nsd20_deeptools.bed
echo "#High H2AZ in siC" >> /home/roberto/h2az/bed/ach2az_sik_vs_siC_1000w_nsd20_deeptools.bed

grep "Down" /home/roberto/h2az/bed/ach2az_sik_vs_siC_1000w_nsd20 > /home/roberto/h2az/bed/ach2az_sik_vs_siC_1000w_nsd20_down_deeptools.bed

computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/ach2az_siControl.bw \
/home/roberto/h2az/bw/ach2az_siTIP60.bw \
-R /home/roberto/h2az/bed/ach2az_sik_vs_siC_1000w_nsd20_deeptools.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/ach2az_diffreps.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "Center" --colorMap Blues \
-m /home/roberto/h2az/heatmap/ach2az_diffreps.mat  \
 --samplesLabel "acH2AZ siControl" "acH2AZ siTIP60"  \
-out /home/roberto/h2az/heatmap/ach2az_diffreps.pdf

computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/ach2az_siControl.bw \
/home/roberto/h2az/bw/ach2az_siTIP60.bw \
-R /home/roberto/h2az/bed/ach2az_sik_vs_siC_1000w_nsd20_down_deeptools.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/ach2az_diffreps_down.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "Center" --colorMap Blues \
-m /home/roberto/h2az/heatmap/ach2az_diffreps_down.mat  \
 --samplesLabel "acH2AZ siControl" "acH2AZ siTIP60" --regionsLabel "peaks"  \
-out /home/roberto/h2az/heatmap/ach2az_diffreps_down.pdf


computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/h2az_siControl.bw \
/home/roberto/h2az/bw/h2az_siTIP60.bw \
-R /home/roberto/h2az/bed/ach2az_sik_vs_siC_1000w_nsd20_down_deeptools.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/h2az_diffreps_down.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "Center" --colorMap Blues \
-m /home/roberto/h2az/heatmap/h2az_diffreps_down.mat  \
 --samplesLabel "H2AZ siControl" "H2AZ siTIP60" --regionsLabel "peaks" \
-out /home/roberto/h2az/heatmap/h2az_diffreps_down.pdf

#################################################################################################
# TSS

computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/h2az_siControl.bw \
/home/roberto/h2az/bw/h2az_siTIP60.bw \
/home/roberto/h2az/bw/ach2az_siControl.bw \
/home/roberto/h2az/bw/ach2az_siTIP60.bw \
-R /home/roberto/references/hg38_tss.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/tss_hg38.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "Center" --colorMap Blues \
-m /home/roberto/h2az/heatmap/tss_hg38.mat --regionsLabel "TSS" \
 --samplesLabel "H2AZ siControl" "H2AZ siTIP60" "acH2AZ siControl" "acH2AZ siTIP60"  \
-out /home/roberto/h2az/heatmap/tss_hg38.pdf

computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/h2az_siControl.bw \
/home/roberto/h2az/bw/h2az_siTIP60.bw \
-R /home/roberto/references/hg38_tss.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/h2az_tss_hg38.mat
#
computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/ach2az_siControl.bw \
/home/roberto/h2az/bw/ach2az_siTIP60.bw \
-R /home/roberto/references/hg38_tss.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/ach2az_tss_hg38.mat
#

plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "TSS" --colorMap Blues \
-m /home/roberto/h2az/heatmap/h2az_tss_hg38.mat --regionsLabel "Genes" \
 --samplesLabel "H2AZ siControl" "H2AZ siTIP60"  \
-out /home/roberto/h2az/heatmap/h2az_tss_hg38.pdf

plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "TSS" --colorMap Blues \
-m /home/roberto/h2az/heatmap/ach2az_tss_hg38.mat --regionsLabel "Genes" \
 --samplesLabel "acH2AZ siControl" "acH2AZ siTIP60"  \
-out /home/roberto/h2az/heatmap/ach2az_tss_hg38.pdf

######################################################################################################

computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/deepa_hct116/siControl_H3_novogene.bw \
/home/roberto/h2az/bw/deepa_hct116/siTIP60_H3_novogene.bw \
/home/roberto/h2az/bw/deepa_hct116/siControl_H3_steph.bw \
/home/roberto/h2az/bw/deepa_hct116/siTIP60_H3_steph.bw \
-R /home/roberto/references/hg38_tss.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/tss_h3.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "Center" --colorMap Reds \
-m /home/roberto/h2az/heatmap/tss_h3.mat --regionsLabel "TSS" \
 --samplesLabel "H3 siControl Novogene" "H3 siTIP60 Novogene" "H3 siControl Steph" "H3 siTIP60 Steph"  \
-out /home/roberto/h2az/heatmap/tss_h3.pdf


computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/deepa_hct116/siControl_H3_novogene.bw \
/home/roberto/h2az/bw/deepa_hct116/siTIP60_H3_novogene.bw \
/home/roberto/h2az/bw/deepa_hct116/siControl_H3_steph.bw \
/home/roberto/h2az/bw/deepa_hct116/siTIP60_H3_steph.bw \
-R /home/roberto/h2az/bed/ach2az_sik_vs_siC_1000w_nsd20_down_deeptools.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/H3_in_ach2az_diffreps_down.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "Center" --colorMap Reds \
-m /home/roberto/h2az/heatmap/H3_in_ach2az_diffreps_down.mat  \
 --samplesLabel "H3 siControl Novogene" "H3 siTIP60 Novogene" "H3 siControl Steph" "H3 siTIP60 Steph"  \
-out /home/roberto/h2az/heatmap/H3_in_ach2az_diffreps_down.pdf

######################################################################################################
more /home/roberto/references/hg38_tss.bed|grep -w -f 741_genes.txt |grep -P -v "\-\w" > TSS_siK_down_genes.bed
more /home/roberto/references/hg38_tss.bed|grep -w -f UPPPP.txt |grep -P -v "\-\w" > TSS_siK_Up_genes.bed

cat TSS_siK_Up_genes.bed > TSS_diff_genes.bed
echo "#Upregulated Genes" >> TSS_diff_genes.bed
cat TSS_siK_down_genes.bed >> TSS_diff_genes.bed
echo "#Downregulated Genes" >> TSS_diff_genes.bed

computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/h2az_siControl.bw \
/home/roberto/h2az/bw/h2az_siTIP60.bw \
/home/roberto/h2az/bw/ach2az_siControl.bw \
/home/roberto/h2az/bw/ach2az_siTIP60.bw \
-R TSS_diff_genes.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out TSS_diff_genes.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "TSS" --colorMap Blues \
-m TSS_diff_genes.mat \
 --samplesLabel "H2AZ siControl" "H2AZ siTIP60" "acH2AZ siControl" "acH2AZ siTIP60"  \
-out TSS_diff_genes.pdf








