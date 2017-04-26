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
trim_galore --illumina --clip_R1 12 --clip_R2 12 -o /home/roberto/deepa/tam_wai_leong/trimmed \
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
--max /home/roberto/deepa/tam_wai_leong/RepEnrich/P360_tumor_multimap.fastq \
-1 <( zcat /home/roberto/deepa/tam_wai_leong/Sample_RHC8265/RHC8265-CGATGT_S7_L001_R1_001.fastq.gz ) \
-2 <( zcat /home/roberto/deepa/tam_wai_leong/Sample_RHC8265/RHC8265-CGATGT_S7_L001_R2_001.fastq.gz ) \
/home/roberto/deepa/tam_wai_leong/RepEnrich/P360_tumor_uniq.sam

bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S \
--max /home/roberto/deepa/tam_wai_leong/RepEnrich/P1446_tumor_multimap.fastq \
-1 <( zcat /home/roberto/deepa/tam_wai_leong/Sample_RHC8269/RHC8269-GTGGCC_S11_L001_R1_001.fastq.gz ) \
-2 <( zcat /home/roberto/deepa/tam_wai_leong/Sample_RHC8269/RHC8269-GTGGCC_S11_L001_R2_001.fastq.gz ) \
/home/roberto/deepa/tam_wai_leong/RepEnrich/P1446_tumor_uniq.sam

bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S \
--max /home/roberto/deepa/tam_wai_leong/RepEnrich/P1456_tumor_multimap.fastq \
-1 <( zcat /home/roberto/deepa/tam_wai_leong/Sample_RHC8271/RHC8271-TTAGGC_S13_L001_R1_001.fastq.gz ) \
-2 <( zcat /home/roberto/deepa/tam_wai_leong/Sample_RHC8271/RHC8271-TTAGGC_S13_L001_R2_001.fastq.gz ) \
/home/roberto/deepa/tam_wai_leong/RepEnrich/P1456_tumor_uniq.sam

bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S \
--max /home/roberto/deepa/tam_wai_leong/RepEnrich/P520_tumor_multimap.fastq \
-1 <( zcat /home/roberto/deepa/tam_wai_leong/Sample_RHC8263/RHC8263-AGTCAA_S5_L001_R1_001.fastq.gz ) \
-2 <( zcat /home/roberto/deepa/tam_wai_leong/Sample_RHC8263/RHC8263-AGTCAA_S5_L001_R2_001.fastq.gz ) \
/home/roberto/deepa/tam_wai_leong/RepEnrich/P520_tumor_uniq.sam


