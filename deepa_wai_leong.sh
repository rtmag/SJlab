
mkdir star_hg38_gencode26_overhang149


/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --runThreadN 50 --runMode genomeGenerate \
--genomeDir star_hg38_gencode26_overhang149/ --genomeFastaFiles hg38.fa \
--sjdbGTFfile gencode.v26.annotation.gtf --sjdbOverhang 149



#######

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 35 \
--readFilesIn /home/roberto/deepa/tam_wai_leong/Sample_RHC8260/RHC8260-GCCAAT_S2_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8260/RHC8260-GCCAAT_S2_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/deepa/tam_wai_leong/bam/P019WKF_normal_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 35 \
--readFilesIn /home/roberto/deepa/tam_wai_leong/Sample_RHC8268/RHC8268-GGCTAC_S10_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8268/RHC8268-GGCTAC_S10_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/deepa/tam_wai_leong/bam/P1446_normal_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 35 \
--readFilesIn /home/roberto/deepa/tam_wai_leong/Sample_RHC8261/RHC8261-CTTGTA_S3_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8261/RHC8261-CTTGTA_S3_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/deepa/tam_wai_leong/bam/P019WKF_tumor_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 35 \
--readFilesIn /home/roberto/deepa/tam_wai_leong/Sample_RHC8269/RHC8269-GTGGCC_S11_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8269/RHC8269-GTGGCC_S11_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/deepa/tam_wai_leong/bam/P1446_tumor_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 35 \
--readFilesIn /home/roberto/deepa/tam_wai_leong/Sample_RHC8271/RHC8271-TTAGGC_S13_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8271/RHC8271-TTAGGC_S13_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/deepa/tam_wai_leong/bam/P1456_tumor_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 35 \
--readFilesIn /home/roberto/deepa/tam_wai_leong/Sample_RHC8273/RHC8273-CGTACG_S15_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8273/RHC8273-CGTACG_S15_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/deepa/tam_wai_leong/bam/P1463_tumor_


/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 35 \
--readFilesIn /home/roberto/deepa/tam_wai_leong/Sample_RHC8265/RHC8265-CGATGT_S7_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8265/RHC8265-CGATGT_S7_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/deepa/tam_wai_leong/bam/P360_tumor_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 35 \
--readFilesIn /home/roberto/deepa/tam_wai_leong/Sample_RHC8263/RHC8263-AGTCAA_S5_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8263/RHC8263-AGTCAA_S5_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/deepa/tam_wai_leong/bam/P520_tumor_
