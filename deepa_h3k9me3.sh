
/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --runThreadN 35 --runMode genomeGenerate --genomeDir \
/home/roberto/references/hg38_noanno \
--genomeFastaFiles /home/roberto/references/hg38.fa

###
trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/C_H3_L001/C-H3_S6_L001_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_H3_L001/C-H3_S6_L001_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/C_H3_L002/C-H3_S6_L002_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_H3_L002/C-H3_S6_L002_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/C_H3_L003/C-H3_S6_L003_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_H3_L003/C-H3_S6_L003_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/C_H3_L004/C-H3_S6_L004_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_H3_L004/C-H3_S6_L004_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/C_input_L001/C-input_S5_L001_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_input_L001/C-input_S5_L001_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/C_input_L002/C-input_S5_L002_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_input_L002/C-input_S5_L002_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/C_input_L003/C-input_S5_L003_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_input_L003/C-input_S5_L003_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/C_input_L004/C-input_S5_L004_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_input_L004/C-input_S5_L004_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/C_k9me3_L001/C-k9me3_S4_L001_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_k9me3_L001/C-k9me3_S4_L001_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/C_k9me3_L002/C-k9me3_S4_L002_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_k9me3_L002/C-k9me3_S4_L002_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/C_k9me3_L003/C-k9me3_S4_L003_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_k9me3_L003/C-k9me3_S4_L003_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/C_k9me3_L004/C-k9me3_S4_L004_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_k9me3_L004/C-k9me3_S4_L004_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/K_H3_L001/K-H3_S2_L001_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_H3_L001/K-H3_S2_L001_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/K_H3_L002/K-H3_S2_L002_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_H3_L002/K-H3_S2_L002_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/K_H3_L003/K-H3_S2_L003_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_H3_L003/K-H3_S2_L003_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/K_H3_L004/K-H3_S2_L004_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_H3_L004/K-H3_S2_L004_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/K_input_L001/K-input_S3_L001_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_input_L001/K-input_S3_L001_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/K_input_L002/K-input_S3_L002_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_input_L002/K-input_S3_L002_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/K_input_L003/K-input_S3_L003_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_input_L003/K-input_S3_L003_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/K_input_L004/K-input_S3_L004_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_input_L004/K-input_S3_L004_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/K_k9me3_L001/K-k9me3_S1_L001_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_k9me3_L001/K-k9me3_S1_L001_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/K_k9me3_L002/K-k9me3_S1_L002_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_k9me3_L002/K-k9me3_S1_L002_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/K_k9me3_L003/K-k9me3_S1_L003_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_k9me3_L003/K-k9me3_S1_L003_R2_001.fastq.gz

trim_galore --illumina --paired -o /home/roberto/deepa/h3k9me3/fastq_trim/ \
/home/roberto/deepa/h3k9me3/K_k9me3_L004/K-k9me3_S1_L004_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_k9me3_L004/K-k9me3_S1_L004_R2_001.fastq.gz


#

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/C_H3_L001/C-H3_S6_L001_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_H3_L001/C-H3_S6_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/C_H3_L001_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/C_H3_L002/C-H3_S6_L002_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_H3_L002/C-H3_S6_L002_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/C_H3_L002_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/C_H3_L003/C-H3_S6_L003_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_H3_L003/C-H3_S6_L003_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/C_H3_L003_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/C_H3_L004/C-H3_S6_L004_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_H3_L004/C-H3_S6_L004_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/C_H3_L004_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/C_input_L001/C-input_S5_L001_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_input_L001/C-input_S5_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/C_input_L001_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/C_input_L002/C-input_S5_L002_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_input_L002/C-input_S5_L002_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/C_input_L002_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/C_input_L003/C-input_S5_L003_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_input_L003/C-input_S5_L003_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/C_input_L003_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/C_input_L004/C-input_S5_L004_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_input_L004/C-input_S5_L004_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/C_input_L004_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/C_k9me3_L001/C-k9me3_S4_L001_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_k9me3_L001/C-k9me3_S4_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/C_k9me3_L001_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/C_k9me3_L002/C-k9me3_S4_L002_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_k9me3_L002/C-k9me3_S4_L002_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/C_k9me3_L002_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/C_k9me3_L003/C-k9me3_S4_L003_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_k9me3_L003/C-k9me3_S4_L003_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/C_k9me3_L003_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/C_k9me3_L004/C-k9me3_S4_L004_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/C_k9me3_L004/C-k9me3_S4_L004_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/C_k9me3_L004_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/K_H3_L001/K-H3_S2_L001_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_H3_L001/K-H3_S2_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/K_H3_L001_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/K_H3_L002/K-H3_S2_L002_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_H3_L002/K-H3_S2_L002_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/K_H3_L002_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/K_H3_L003/K-H3_S2_L003_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_H3_L003/K-H3_S2_L003_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/K_H3_L003_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/K_H3_L004/K-H3_S2_L004_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_H3_L004/K-H3_S2_L004_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/K_H3_L004_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/K_input_L001/K-input_S3_L001_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_input_L001/K-input_S3_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/K_input_L001_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/K_input_L002/K-input_S3_L002_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_input_L002/K-input_S3_L002_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/K_input_L002_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/K_input_L003/K-input_S3_L003_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_input_L003/K-input_S3_L003_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/K_input_L003_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/K_input_L004/K-input_S3_L004_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_input_L004/K-input_S3_L004_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/K_input_L004_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/K_k9me3_L001/K-k9me3_S1_L001_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_k9me3_L001/K-k9me3_S1_L001_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/K_k9me3_L001_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/K_k9me3_L002/K-k9me3_S1_L002_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_k9me3_L002/K-k9me3_S1_L002_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/K_k9me3_L002_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/K_k9me3_L003/K-k9me3_S1_L003_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_k9me3_L003/K-k9me3_S1_L003_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/K_k9me3_L003_

/home/sb/programfiles/STAR/bin/Linux_x86_64/STAR --genomeDir /home/roberto/references/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /home/roberto/deepa/h3k9me3/K_k9me3_L004/K-k9me3_S1_L004_R1_001.fastq.gz \
/home/roberto/deepa/h3k9me3/K_k9me3_L004/K-k9me3_S1_L004_R2_001.fastq.gz \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /home/roberto/deepa/h3k9me3/bam/K_k9me3_L004_

#### MERGE
samtools merge -f -h /home/roberto/deepa/h3k9me3/bam/C_H3_L001_Aligned.sortedByCoord.out.bam /home/roberto/deepa/h3k9me3/bam/C_H3.bam \
/home/roberto/deepa/h3k9me3/bam/C_H3_L001_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_H3_L002_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_H3_L003_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_H3_L004_Aligned.sortedByCoord.out.bam &

samtools merge -f -h /home/roberto/deepa/h3k9me3/bam/C_input_L001_Aligned.sortedByCoord.out.bam /home/roberto/deepa/h3k9me3/bam/C_input.bam \
/home/roberto/deepa/h3k9me3/bam/C_input_L001_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_input_L002_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_input_L003_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_input_L004_Aligned.sortedByCoord.out.bam &

samtools merge -f -h /home/roberto/deepa/h3k9me3/bam/C_k9me3_L001_Aligned.sortedByCoord.out.bam /home/roberto/deepa/h3k9me3/bam/C_k9me3.bam \
/home/roberto/deepa/h3k9me3/bam/C_k9me3_L001_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_k9me3_L002_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_k9me3_L003_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_k9me3_L004_Aligned.sortedByCoord.out.bam &

samtools merge -f -h /home/roberto/deepa/h3k9me3/bam/K_H3_L001_Aligned.sortedByCoord.out.bam /home/roberto/deepa/h3k9me3/bam/K_H3.bam \
/home/roberto/deepa/h3k9me3/bam/K_H3_L001_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_H3_L002_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_H3_L003_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_H3_L004_Aligned.sortedByCoord.out.bam &

samtools merge -f -h /home/roberto/deepa/h3k9me3/bam/K_input_L001_Aligned.sortedByCoord.out.bam /home/roberto/deepa/h3k9me3/bam/K_input.bam \
/home/roberto/deepa/h3k9me3/bam/K_input_L001_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_input_L002_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_input_L003_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_input_L004_Aligned.sortedByCoord.out.bam &

samtools merge -f -h /home/roberto/deepa/h3k9me3/bam/K_k9me3_L001_Aligned.sortedByCoord.out.bam /home/roberto/deepa/h3k9me3/bam/K_k9me3.bam \
/home/roberto/deepa/h3k9me3/bam/K_k9me3_L001_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_k9me3_L002_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_k9me3_L003_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_k9me3_L004_Aligned.sortedByCoord.out.bam &

#####
samtools sort -@ 5 -m 10G /home/roberto/deepa/h3k9me3/bam/C_H3.bam /home/roberto/deepa/h3k9me3/bam/C_H3_sort &
samtools sort -@ 5 -m 10G /home/roberto/deepa/h3k9me3/bam/C_input.bam /home/roberto/deepa/h3k9me3/bam/C_input_sort &
samtools sort -@ 5 -m 10G /home/roberto/deepa/h3k9me3/bam/C_k9me3.bam /home/roberto/deepa/h3k9me3/bam/C_k9me3_sort &
samtools sort -@ 5 -m 10G /home/roberto/deepa/h3k9me3/bam/K_H3.bam /home/roberto/deepa/h3k9me3/bam/K_H3_sort &
samtools sort -@ 5 -m 10G /home/roberto/deepa/h3k9me3/bam/K_input.bam /home/roberto/deepa/h3k9me3/bam/K_input_sort &
samtools sort -@ 5 -m 10G /home/roberto/deepa/h3k9me3/bam/K_k9me3.bam /home/roberto/deepa/h3k9me3/bam/K_k9me3_sort &


#####
java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/C_H3.bam \
O=/home/roberto/deepa/h3k9me3/bam/C_H3_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/C_H3.mfile

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/C_input.bam \
O=/home/roberto/deepa/h3k9me3/bam/C_input_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/C_input.mfile

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/C_k9me3.bam \
O=/home/roberto/deepa/h3k9me3/bam/C_k9me3_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/C_k9me3.mfile

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/K_H3.bam \
O=/home/roberto/deepa/h3k9me3/bam/K_H3_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/K_H3.mfile

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/K_input.bam \
O=/home/roberto/deepa/h3k9me3/bam/K_input_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/K_input.mfile

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/K_k9me3.bam \
O=/home/roberto/deepa/h3k9me3/bam/K_k9me3_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/K_k9me3.mfile
####
samtools index /home/roberto/deepa/h3k9me3/bam/C_H3_rmdup.bam &
samtools index /home/roberto/deepa/h3k9me3/bam/C_input_rmdup.bam &
samtools index /home/roberto/deepa/h3k9me3/bam/C_k9me3_rmdup.bam &
samtools index /home/roberto/deepa/h3k9me3/bam/K_H3_rmdup.bam 
samtools index /home/roberto/deepa/h3k9me3/bam/K_input_rmdup.bam 
samtools index /home/roberto/deepa/h3k9me3/bam/K_k9me3_rmdup.bam 

#

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /home/roberto/deepa/h3k9me3/bam/C_H3_rmdup.bam \
-o /home/roberto/deepa/h3k9me3/bw/C_H3.bw

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /home/roberto/deepa/h3k9me3/bam/C_input_rmdup.bam \
-o /home/roberto/deepa/h3k9me3/bw/C_input.bw

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /home/roberto/deepa/h3k9me3/bam/C_k9me3_rmdup.bam \
-o /home/roberto/deepa/h3k9me3/bw/C_k9me3.bw

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /home/roberto/deepa/h3k9me3/bam/K_H3_rmdup.bam \
-o /home/roberto/deepa/h3k9me3/bw/K_H3.bw

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /home/roberto/deepa/h3k9me3/bam/K_input_rmdup.bam \
-o /home/roberto/deepa/h3k9me3/bw/K_input.bw

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /home/roberto/deepa/h3k9me3/bam/K_k9me3_rmdup.bam \
-o /home/roberto/deepa/h3k9me3/bw/K_k9me3.bw

######
#C_h3
samtools merge -f -h /home/roberto/deepa/h3k9me3/bam/C_H3_L001_Aligned.sortedByCoord.out.bam /home/roberto/deepa/h3k9me3/bam/C_H3.bam \
/home/roberto/deepa/h3k9me3/bam/C_H3_L001_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_H3_L002_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_H3_L003_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_H3_L004_Aligned.sortedByCoord.out.bam 

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/C_H3.bam \
O=/home/roberto/deepa/h3k9me3/bam/C_H3_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/C_H3.mfile

samtools index /home/roberto/deepa/h3k9me3/bam/C_H3_rmdup.bam

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /home/roberto/deepa/h3k9me3/bam/C_H3_rmdup.bam \
-o /home/roberto/deepa/h3k9me3/bw/C_H3.bw
####
# C_input
samtools merge -f -h /home/roberto/deepa/h3k9me3/bam/C_input_L001_Aligned.sortedByCoord.out.bam /home/roberto/deepa/h3k9me3/bam/C_input.bam \
/home/roberto/deepa/h3k9me3/bam/C_input_L001_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_input_L002_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_input_L003_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_input_L004_Aligned.sortedByCoord.out.bam

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/C_input.bam \
O=/home/roberto/deepa/h3k9me3/bam/C_input_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/C_input.mfile

samtools index /home/roberto/deepa/h3k9me3/bam/C_input_rmdup.bam

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /home/roberto/deepa/h3k9me3/bam/C_input_rmdup.bam \
-o /home/roberto/deepa/h3k9me3/bw/C_input.bw
####
# C_k9me3
samtools merge -f -h /home/roberto/deepa/h3k9me3/bam/C_k9me3_L001_Aligned.sortedByCoord.out.bam /home/roberto/deepa/h3k9me3/bam/C_k9me3.bam \
/home/roberto/deepa/h3k9me3/bam/C_k9me3_L001_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_k9me3_L002_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_k9me3_L003_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/C_k9me3_L004_Aligned.sortedByCoord.out.bam

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/C_k9me3.bam \
O=/home/roberto/deepa/h3k9me3/bam/C_k9me3_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/C_k9me3.mfile

samtools index /home/roberto/deepa/h3k9me3/bam/C_k9me3_rmdup.bam

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /home/roberto/deepa/h3k9me3/bam/C_k9me3_rmdup.bam \
-o /home/roberto/deepa/h3k9me3/bw/C_k9me3.bw

####
# K_H3
samtools merge -f -h /home/roberto/deepa/h3k9me3/bam/K_H3_L001_Aligned.sortedByCoord.out.bam /home/roberto/deepa/h3k9me3/bam/K_H3.bam \
/home/roberto/deepa/h3k9me3/bam/K_H3_L001_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_H3_L002_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_H3_L003_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_H3_L004_Aligned.sortedByCoord.out.bam 

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/K_H3.bam \
O=/home/roberto/deepa/h3k9me3/bam/K_H3_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/K_H3.mfile

samtools index /home/roberto/deepa/h3k9me3/bam/K_H3_rmdup.bam

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /home/roberto/deepa/h3k9me3/bam/K_H3_rmdup.bam \
-o /home/roberto/deepa/h3k9me3/bw/K_H3.bw

####
# K_input
samtools merge -f -h /home/roberto/deepa/h3k9me3/bam/K_input_L001_Aligned.sortedByCoord.out.bam /home/roberto/deepa/h3k9me3/bam/K_input.bam \
/home/roberto/deepa/h3k9me3/bam/K_input_L001_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_input_L002_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_input_L003_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_input_L004_Aligned.sortedByCoord.out.bam

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/K_input.bam \
O=/home/roberto/deepa/h3k9me3/bam/K_input_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/K_input.mfile

samtools index /home/roberto/deepa/h3k9me3/bam/K_input_rmdup.bam

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /home/roberto/deepa/h3k9me3/bam/K_input_rmdup.bam \
-o /home/roberto/deepa/h3k9me3/bw/K_input.bw

####
# K_k9me3
samtools merge -f -h /home/roberto/deepa/h3k9me3/bam/K_k9me3_L001_Aligned.sortedByCoord.out.bam /home/roberto/deepa/h3k9me3/bam/K_k9me3.bam
/home/roberto/deepa/h3k9me3/bam/K_k9me3_L001_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_k9me3_L002_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_k9me3_L003_Aligned.sortedByCoord.out.bam \
/home/roberto/deepa/h3k9me3/bam/K_k9me3_L004_Aligned.sortedByCoord.out.bam 

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/K_k9me3.bam \
O=/home/roberto/deepa/h3k9me3/bam/K_k9me3_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/K_k9me3.mfile

samtools index /home/roberto/deepa/h3k9me3/bam/K_k9me3_rmdup.bam

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /home/roberto/deepa/h3k9me3/bam/K_k9me3_rmdup.bam \
-o /home/roberto/deepa/h3k9me3/bw/K_k9me3.bw

#
