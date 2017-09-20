python ~/myPrograms/RepEnrich/RepEnrich_setup.py hg19_repeatmasker_clean.txt hg19.fa RepEnrich_hg19

# QC
~/myPrograms/FastQC/fastqc /home/roberto/deepa/tam_wai_leong/Sample_RHC8265/RHC8265-CGATGT_S7_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8265/RHC8265-CGATGT_S7_L001_R2_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8269/RHC8269-GTGGCC_S11_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8269/RHC8269-GTGGCC_S11_L001_R2_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8271/RHC8271-TTAGGC_S13_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8271/RHC8271-TTAGGC_S13_L001_R2_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8263/RHC8263-AGTCAA_S5_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8263/RHC8263-AGTCAA_S5_L001_R2_001.fastq.gz \
-o fastqc

# Trimming
trim_galore --illumina --clip_R1 12 -o /home/roberto/deepa/tam_wai_leong/trimmed \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8265/RHC8265-CGATGT_S7_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8265/RHC8265-CGATGT_S7_L001_R2_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8269/RHC8269-GTGGCC_S11_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8269/RHC8269-GTGGCC_S11_L001_R2_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8271/RHC8271-TTAGGC_S13_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8271/RHC8271-TTAGGC_S13_L001_R2_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8263/RHC8263-AGTCAA_S5_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8263/RHC8263-AGTCAA_S5_L001_R2_001.fastq.gz 


##
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S \
--max /home/roberto/deepa/tam_wai_leong/RepEnrich_trimmed/P360_tumor_multimap.fastq \
-1 <( zcat /home/roberto/deepa/tam_wai_leong/trimmed/RHC8265-CGATGT_S7_L001_R1_001_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/tam_wai_leong/trimmed/RHC8265-CGATGT_S7_L001_R2_001_trimmed.fq.gz ) \
/home/roberto/deepa/tam_wai_leong/RepEnrich_trimmed/P360_tumor_uniq.sam

bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S \
--max /home/roberto/deepa/tam_wai_leong/RepEnrich_trimmed/P1446_tumor_multimap.fastq \
-1 <( zcat /home/roberto/deepa/tam_wai_leong/trimmed/RHC8269-GTGGCC_S11_L001_R1_001_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/tam_wai_leong/trimmed/RHC8269-GTGGCC_S11_L001_R2_001_trimmed.fq.gz ) \
/home/roberto/deepa/tam_wai_leong/RepEnrich_trimmed/P1446_tumor_uniq.sam

bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S \
--max /home/roberto/deepa/tam_wai_leong/RepEnrich_trimmed/P1456_tumor_multimap.fastq \
-1 <( zcat /home/roberto/deepa/tam_wai_leong/trimmed/RHC8271-TTAGGC_S13_L001_R1_001_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/tam_wai_leong/trimmed/RHC8271-TTAGGC_S13_L001_R2_001_trimmed.fq.gz ) \
/home/roberto/deepa/tam_wai_leong/RepEnrich_trimmed/P1456_tumor_uniq.sam

bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S \
--max /home/roberto/deepa/tam_wai_leong/RepEnrich_trimmed/P520_tumor_multimap.fastq \
-1 <( zcat /home/roberto/deepa/tam_wai_leong/trimmed/RHC8263-AGTCAA_S5_L001_R1_001_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/tam_wai_leong/trimmed/RHC8263-AGTCAA_S5_L001_R2_001_trimmed.fq.gz ) \
/home/roberto/deepa/tam_wai_leong/RepEnrich_trimmed/P520_tumor_uniq.sam


#######

samtools view -bS P360_tumor_uniq.sam | samtools sort - P360_tumor_uniq
samtools index P360_tumor_uniq.bam

samtools view -bS P1446_tumor_uniq.sam | samtools sort - P1446_tumor_uniq
samtools index P1446_tumor_uniq.bam

samtools view -bS P1456_tumor_uniq.sam | samtools sort - P1456_tumor_uniq
samtools index P1456_tumor_uniq.bam

samtools view -bS P520_tumor_uniq.sam | samtools sort - P520_tumor_uniq
samtools index P520_tumor_uniq.bam
###

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/tam_wai_leong/RepEnrich P360_tumor \
/home/roberto/references/RepEnrich_hg19/ \
P360_tumor_multimap_1.fastq \
--fastqfile2 P360_tumor_multimap_2.fastq \
P360_tumor_uniq.bam \
--cpus 30 --pairedend TRUE

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/tam_wai_leong/RepEnrich P1446_tumor \
/home/roberto/references/RepEnrich_hg19/ \
P1446_tumor_multimap_1.fastq \
--fastqfile2 P1446_tumor_multimap_2.fastq \
P1446_tumor_uniq.bam \
--cpus 30 --pairedend TRUE

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/tam_wai_leong/RepEnrich P1456_tumor \
/home/roberto/references/RepEnrich_hg19/ \
P1456_tumor_multimap_1.fastq \
--fastqfile2 P1456_tumor_multimap_2.fastq \
P1456_tumor_uniq.bam \
--cpus 30 --pairedend TRUE

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/tam_wai_leong/RepEnrich P520_tumor \
/home/roberto/references/RepEnrich_hg19/ \
P520_tumor_multimap_1.fastq \
--fastqfile2 P520_tumor_multimap_2.fastq \
P520_tumor_uniq.bam \
--cpus 30 --pairedend TRUE
