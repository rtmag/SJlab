python /root/myPrograms/RepEnrich2/RepEnrich2_setup.py \
/root/sjlab/deepa/repenrich2_ref/hg38_repeatmasker.txt \
/root/resources/hg38_allchr.fasta \
/root/sjlab/deepa/repenrich2_ref/repenrich2_setup_hg38

##

bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_1_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_1_2_val_2.fq.gz) \
-S /root/sjlab/deepa/bam_novogene/c1.sam

samtools view -bS /root/sjlab/deepa/bam_novogene/c1.sam > /root/sjlab/deepa/bam_novogene/c1.bam
rm /root/sjlab/deepa/bam_novogene/c1.sam

python RepEnrich2_subset.py /root/sjlab/deepa/bam_novogene/c1.bam 30 c1 --pairedend TRUE

bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_2_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_2_2_val_2.fq.gz) \
-S /root/sjlab/deepa/bam_novogene/c2.sam

samtools view -bS /root/sjlab/deepa/bam_novogene/c2.sam > /root/sjlab/deepa/bam_novogene/c2.bam
rm /root/sjlab/deepa/bam_novogene/c2.sam

python RepEnrich2_subset.py /root/sjlab/deepa/bam_novogene/c2.bam 30 c2 --pairedend TRUE

bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_3_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_3_2_val_2.fq.gz) \
-S /root/sjlab/deepa/bam_novogene/c3.sam

samtools view -bS /root/sjlab/deepa/bam_novogene/c3.sam > /root/sjlab/deepa/bam_novogene/c3.bam
rm /root/sjlab/deepa/bam_novogene/c3.sam

python RepEnrich2_subset.py /root/sjlab/deepa/bam_novogene/c3.bam 30 c3 --pairedend TRUE

bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_4_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_4_2_val_2.fq.gz) \
-S /root/sjlab/deepa/bam_novogene/c4.sam

samtools view -bS /root/sjlab/deepa/bam_novogene/c4.sam > /root/sjlab/deepa/bam_novogene/c4.bam
rm /root/sjlab/deepa/bam_novogene/c4.sam

python RepEnrich2_subset.py /root/sjlab/deepa/bam_novogene/c4.bam 30 c4 --pairedend TRUE

bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_5_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_5_2_val_2.fq.gz) \
-S /root/sjlab/deepa/bam_novogene/c5.sam

samtools view -bS /root/sjlab/deepa/bam_novogene/c5.sam > /root/sjlab/deepa/bam_novogene/c5.bam
rm /root/sjlab/deepa/bam_novogene/c5.sam

python RepEnrich2_subset.py /root/sjlab/deepa/bam_novogene/c5.bam 30 c5 --pairedend TRUE

bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_6_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_6_2_val_2.fq.gz) \
-S /root/sjlab/deepa/bam_novogene/c6.sam

samtools view -bS /root/sjlab/deepa/bam_novogene/c6.sam > /root/sjlab/deepa/bam_novogene/c6.bam
rm /root/sjlab/deepa/bam_novogene/c6.sam

python RepEnrich2_subset.py /root/sjlab/deepa/bam_novogene/c6.bam 30 c6 --pairedend TRUE
