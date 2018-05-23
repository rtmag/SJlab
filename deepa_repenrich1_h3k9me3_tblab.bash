###############################################
bowtie-build /root/resources/hg38_allchr.fasta /root/resources/hg38_bowtie/hg38
###############################################

 bowtie /root/resources/hg38_bowtie/hg38 \
-p 30 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph_multimap.fastq \
-1 <(zcat /root/sjlab/deepa/fastq_steph/C-H3_R1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_steph/C-H3_R2.fq.gz) \
/root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph.sam 2> /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph.log

samtools view -bS /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph.sam > /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph.bam
rm /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph.sam
samtools sort /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph.bam > /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph_sort.bam
samtools index /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph_sort.bam
#
 bowtie /root/resources/hg38_bowtie/hg38 \
-p 30 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_steph_multimap.fastq \
-1 <(zcat /root/sjlab/deepa/fastq_steph/C-k9me3_R1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_steph/C-k9me3_R2.fq.gz) \
/root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_steph.sam 2> /root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_steph.log

samtools view -bS /root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_steph.sam > /root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_steph.bam
rm /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph.sam
samtools sort root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph.bam > root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph_sort.bam
samtools index root/sjlab/deepa_repenrich1/bowtie/siControl_H3_steph_sort.bam
#
 bowtie /root/resources/hg38_bowtie/hg38 \
-p 30 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_steph_multimap.fastq \
-1 <(zcat /root/sjlab/deepa/fastq_steph/K-H3_R1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_steph/K-H3_R2.fq.gz) \
/root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_steph.sam 2> /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_steph.log

samtools view -bS /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_steph.sam > /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_steph.bam
rm /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_steph.sam
samtools sort /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_steph.bam > /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_steph_sort.bam
samtools index /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_steph_sort.bam
#
 bowtie /root/resources/hg38_bowtie/hg38 \
-p 30 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_steph_multimap.fastq \
-1 <(zcat /root/sjlab/deepa/fastq_steph/K-k9me3_R1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_steph/K-k9me3_R2.fq.gz) \
/root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_steph.sam 2> /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_steph.log

samtools view -bS /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_steph.sam > /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_steph.bam
rm /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_steph.sam
samtools sort /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_steph.bam > /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_steph_sort.bam
samtools index /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_steph_sort.bam

##################################################################################################################

 bowtie /root/resources/hg38_bowtie/hg38 \
-p 30 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_novogene_multimap.fastq \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_3_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_3_2_val_2.fq.gz) \
/root/sjlab/deepa_repenrich1/bowtie/siControl_H3_novogene.sam 2> /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_novogene.log

samtools view -bS /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_novogene.sam > /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_novogene.bam
rm /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_novogene.sam
samtools sort /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_novogene.bam > /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_novogene_sort.bam
samtools index /root/sjlab/deepa_repenrich1/bowtie/siControl_H3_novogene_sort.bam
#
 bowtie /root/resources/hg38_bowtie/hg38 \
-p 30 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_novogene_multimap.fastq \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_4_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_4_2_val_2.fq.gz) \
/root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_novogene.sam 2> /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_novogene.log

samtools view -bS /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_novogene.sam > /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_novogene.bam
rm /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_novogene.sam
samtools sort /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_novogene.bam > /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_novogene_sort.bam
samtools index /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3_novogene_sort.bam
#
 bowtie /root/resources/hg38_bowtie/hg38 \
-p 30 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_novogene_multimap.fastq \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_5_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_5_2_val_2.fq.gz) \
/root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_novogene.sam 2> /root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_novogene.log

samtools view -bS /root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_novogene.sam > /root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_novogene.bam
rm /root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_novogene.sam
samtools sort /root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_novogene.bam > /root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_novogene_sort.bam
samtools index /root/sjlab/deepa_repenrich1/bowtie/siControl_H3K9me3_novogene_sort.bam
#
 bowtie /root/resources/hg38_bowtie/hg38 \
-p 30 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_novogene_multimap.fastq \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_6_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_6_2_val_2.fq.gz) \
/root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_novogene.sam 2> /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_novogene.log

samtools view -bS /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_novogene.sam > /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_novogene.bam
rm /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_novogene.sam
samtools sort /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_novogene.bam > /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_novogene_sort.bam
samtools index /root/sjlab/deepa_repenrich1/bowtie/siTIP60_H3K9me3_novogene_sort.bam
#


