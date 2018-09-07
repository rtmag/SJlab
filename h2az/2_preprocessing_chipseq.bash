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
