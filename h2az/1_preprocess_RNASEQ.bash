#####################################################################################################################################
/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 60 \
--readFilesIn /home/roberto/h2az/fastq/MCF_s60_1.fq.gz \
/home/roberto/h2az/fastq/MCF_s60_2.fq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/h2az/bam_rna/shrsh_siTIP60_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 60 \
--readFilesIn /home/roberto/h2az/fastq/MCF_s_1.fq.gz \
/home/roberto/h2az/fastq/MCF_s_2.fq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/h2az/bam_rna/shrsh_siControl_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--runThreadN 60 \
--readFilesIn /home/roberto/h2az/fastq/MC_1.fastq \
/home/roberto/h2az/fastq/MC_2.fastq \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/h2az/bam_rna/tham_siControl_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--runThreadN 60 \
--readFilesIn /home/roberto/h2az/fastq/MT_1.fastq \
/home/roberto/h2az/fastq/MT_2.fastq \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/h2az/bam_rna/tham_siTIP60_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--readFilesCommand zcat \
--runThreadN 60 \
--readFilesIn /home/roberto/h2az/fastq/zhou_rnaseq_siC_1.fastq.gz \
/home/roberto/h2az/fastq/zhou_rnaseq_siC_2.fastq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/h2az/bam_rna/zhou_siControl_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/star_hg38_gencode26_overhang149 \
--runThreadN 60 \
--readFilesIn /home/roberto/h2az/fastq/zhou_rnaseq_siK_1.fastq \
/home/roberto/h2az/fastq/zhou_rnaseq_siK_2.fastq \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/roberto/h2az/bam_rna/zhou_siTIP60_
#####################################################################################################################################
