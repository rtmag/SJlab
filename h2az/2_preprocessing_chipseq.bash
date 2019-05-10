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
