
mkdir star_hg38_gencode26_overhang149


/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --runThreadN 50 --runMode genomeGenerate \
--genomeDir star_hg38_gencode26_overhang149/ --genomeFastaFiles hg38.fa \
--sjdbGTFfile gencode.v26.annotation.gtf --sjdbOverhang 149





/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 15 \
--readFilesIn /home/roberto/deepa/tam_wai_leong/Sample_RHC8260/RHC8260-GCCAAT_S2_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8268/RHC8260-GCCAAT_S2_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/deepa/tam_wai_leong/bam/P019WKF_normal_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 15 \
--readFilesIn /home/roberto/deepa/tam_wai_leong/Sample_RHC8268/RHC8268-GGCTAC_S10_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8268/RHC8268-GGCTAC_S10_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/deepa/tam_wai_leong/bam/P1446_normal_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 15 \
--readFilesIn /home/roberto/deepa/tam_wai_leong/Sample_RHC8261/RHC8261-CTTGTA_S3_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8261/RHC8261-CTTGTA_S3_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/deepa/tam_wai_leong/bam/P019WKF_tumor_


/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 15 \
--readFilesIn /home/roberto/deepa/tam_wai_leong/Sample_RHC8261/RHC8261-CTTGTA_S3_L001_R1_001.fastq.gz \
/home/roberto/deepa/tam_wai_leong/Sample_RHC8261/RHC8261-CTTGTA_S3_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/deepa/tam_wai_leong/bam/P1446_tumor_
