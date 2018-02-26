
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
### BOWTIE

#ls -1 /home/roberto/deepa/h3k9me3/fastq_trim/*_1.fq.gz|perl -pe 's/(.+fastq\_trim\/)(.+)_R1_001_val_1.fq.gz/\n bowtie \/home\/roberto\/references\/hg19_bowtie\/hg19 \\
#-p 30 -t -m 1 -S --chunkmbs 2000 \\
#--max \/home\/roberto\/deepa\/h3k9me3\/bowtie\/$2\_multimap\.fastq \\
#\-1 \<\( zcat $1$2\_R1\_001\_val\_1\.fq\.gz \)  \\
#\-2 \<\( zcat $1$2\_R2\_001\_val\_2\.fq\.gz \)  \\
#\/home\/roberto\/deepa\/h3k9me3\/bowtie\/$2\_uniq\.sam \n/g'


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L001_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-H3_S6_L001_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-H3_S6_L001_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L001_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L002_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-H3_S6_L002_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-H3_S6_L002_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L002_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L003_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-H3_S6_L003_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-H3_S6_L003_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L003_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L004_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-H3_S6_L004_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-H3_S6_L004_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L004_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L001_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-input_S5_L001_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-input_S5_L001_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L001_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L002_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-input_S5_L002_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-input_S5_L002_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L002_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L003_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-input_S5_L003_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-input_S5_L003_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L003_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L004_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-input_S5_L004_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-input_S5_L004_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L004_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L001_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-k9me3_S4_L001_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-k9me3_S4_L001_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L001_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L002_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-k9me3_S4_L002_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-k9me3_S4_L002_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L002_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L003_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-k9me3_S4_L003_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-k9me3_S4_L003_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L003_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L004_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-k9me3_S4_L004_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/C-k9me3_S4_L004_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L004_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L001_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-H3_S2_L001_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-H3_S2_L001_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L001_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L002_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-H3_S2_L002_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-H3_S2_L002_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L002_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L003_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-H3_S2_L003_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-H3_S2_L003_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L003_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L004_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-H3_S2_L004_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-H3_S2_L004_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L004_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L001_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-input_S3_L001_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-input_S3_L001_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L001_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L002_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-input_S3_L002_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-input_S3_L002_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L002_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L003_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-input_S3_L003_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-input_S3_L003_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L003_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L004_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-input_S3_L004_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-input_S3_L004_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L004_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L001_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-k9me3_S1_L001_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-k9me3_S1_L001_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L001_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L002_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-k9me3_S1_L002_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-k9me3_S1_L002_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L002_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L003_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-k9me3_S1_L003_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-k9me3_S1_L003_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L003_uniq.sam 


 bowtie /home/roberto/references/hg19_bowtie/hg19 \
-p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L004_multimap.fastq \
-1 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-k9me3_S1_L004_R1_001_val_1.fq.gz )  \
-2 <( zcat /home/roberto/deepa/h3k9me3/fastq_trim/K-k9me3_S1_L004_R2_001_val_2.fq.gz )  \
/home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L004_uniq.sam 

# MERGE bam

samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L001_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L001_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L002_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L002_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L003_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L003_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L004_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L004_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L001_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L001_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L002_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L002_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L003_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L003_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L004_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L004_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L001_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L001_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L002_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L002_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L003_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L003_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L004_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L004_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L001_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L001_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L002_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L002_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L003_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L003_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L004_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L004_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L001_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L001_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L002_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L002_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L003_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L003_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L004_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L004_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L001_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L001_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L002_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L002_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L003_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L003_uniq.bam & 
samtools view -bS /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L004_uniq.sam > /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L004_uniq.bam & 


samtools merge -f -h /home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L001_uniq.bam /home/roberto/deepa/h3k9me3/bowtie/C-H3_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L001_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L002_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L003_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/C-H3_S6_L004_uniq.bam &

samtools merge -f -h /home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L001_uniq.bam /home/roberto/deepa/h3k9me3/bowtie/C-input_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L001_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L002_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L003_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/C-input_S5_L004_uniq.bam &

samtools merge -f -h /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L001_uniq.bam /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L001_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L002_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L003_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/C-k9me3_S4_L004_uniq.bam &

samtools merge -f -h /home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L001_uniq.bam /home/roberto/deepa/h3k9me3/bowtie/K-H3_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L001_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L002_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L003_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/K-H3_S2_L004_uniq.bam &

samtools merge -f -h /home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L001_uniq.bam /home/roberto/deepa/h3k9me3/bowtie/K-input_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L001_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L002_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L003_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/K-input_S3_L004_uniq.bam &

samtools merge -f -h /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L001_uniq.bam /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L001_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L002_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L003_uniq.bam \
/home/roberto/deepa/h3k9me3/bowtie/K-k9me3_S1_L004_uniq.bam &

samtools sort -@ 5 -m 10G /home/roberto/deepa/h3k9me3/bowtie/C-H3_uniq.bam /home/roberto/deepa/h3k9me3/bowtie/C-H3_uniq_sort &
samtools sort -@ 5 -m 10G /home/roberto/deepa/h3k9me3/bowtie/C-input_uniq.bam /home/roberto/deepa/h3k9me3/bowtie/C-input_uniq_sort &
samtools sort -@ 5 -m 10G /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_uniq.bam /home/roberto/deepa/h3k9me3/bowtie/C-k9me3_uniq_sort &
samtools sort -@ 5 -m 10G /home/roberto/deepa/h3k9me3/bowtie/K-H3_uniq.bam /home/roberto/deepa/h3k9me3/bowtie/K-H3_uniq_sort &
samtools sort -@ 5 -m 10G /home/roberto/deepa/h3k9me3/bowtie/K-input_uniq.bam /home/roberto/deepa/h3k9me3/bowtie/K-input_uniq_sort &
samtools sort -@ 5 -m 10G /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_uniq.bam /home/roberto/deepa/h3k9me3/bowtie/K-k9me3_uniq_sort &

#

cat C-H3_S6_L001_multimap_1.fastq  C-H3_S6_L002_multimap_1.fastq  C-H3_S6_L003_multimap_1.fastq  C-H3_S6_L004_multimap_1.fastq > C-H3_multimap_1.fastq
cat C-H3_S6_L001_multimap_2.fastq C-H3_S6_L002_multimap_2.fastq  C-H3_S6_L003_multimap_2.fastq  C-H3_S6_L004_multimap_2.fastq > C-H3_multimap_2.fastq

cat C-input_S5_L001_multimap_1.fastq C-input_S5_L002_multimap_1.fastq  C-input_S5_L003_multimap_1.fastq  C-input_S5_L004_multimap_1.fastq > C-input_multimap_1.fastq
cat C-input_S5_L001_multimap_2.fastq C-input_S5_L002_multimap_2.fastq  C-input_S5_L003_multimap_2.fastq  C-input_S5_L004_multimap_2.fastq > C-input_multimap_2.fastq

cat C-k9me3_S4_L001_multimap_1.fastq C-k9me3_S4_L002_multimap_1.fastq  C-k9me3_S4_L003_multimap_1.fastq  C-k9me3_S4_L004_multimap_1.fastq > C-k9me3_multimap_1.fastq
cat C-k9me3_S4_L001_multimap_2.fastq  C-k9me3_S4_L002_multimap_2.fastq  C-k9me3_S4_L003_multimap_2.fastq  C-k9me3_S4_L004_multimap_2.fastq > C-k9me3_multimap_2.fastq

cat K-H3_S2_L001_multimap_1.fastq  K-H3_S2_L002_multimap_1.fastq  K-H3_S2_L003_multimap_1.fastq  K-H3_S2_L004_multimap_1.fastq >  K-H3_multimap_1.fastq
cat K-H3_S2_L001_multimap_2.fastq  K-H3_S2_L002_multimap_2.fastq  K-H3_S2_L003_multimap_2.fastq  K-H3_S2_L004_multimap_2.fastq >  K-H3_multimap_2.fastq

cat K-input_S3_L001_multimap_1.fastq  K-input_S3_L002_multimap_1.fastq  K-input_S3_L003_multimap_1.fastq  K-input_S3_L004_multimap_1.fastq > K-input_multimap_1.fastq
cat K-input_S3_L001_multimap_2.fastq  K-input_S3_L002_multimap_2.fastq  K-input_S3_L003_multimap_2.fastq  K-input_S3_L004_multimap_2.fastq > K-input_multimap_2.fastq

cat K-k9me3_S1_L001_multimap_1.fastq  K-k9me3_S1_L002_multimap_1.fastq  K-k9me3_S1_L003_multimap_1.fastq  K-k9me3_S1_L004_multimap_1.fastq >  K-k9me3_multimap_1.fastq
cat K-k9me3_S1_L001_multimap_2.fastq  K-k9me3_S1_L002_multimap_2.fastq  K-k9me3_S1_L003_multimap_2.fastq  K-k9me3_S1_L004_multimap_2.fastq >  K-k9me3_multimap_2.fastq


# STAR

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
I=/home/roberto/deepa/h3k9me3/bam/C_H3_sort.bam \
O=/home/roberto/deepa/h3k9me3/bam/C_H3_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/C_H3.mfile

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/C_input_sort.bam \
O=/home/roberto/deepa/h3k9me3/bam/C_input_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/C_input.mfile

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/C_k9me3_sort.bam \
O=/home/roberto/deepa/h3k9me3/bam/C_k9me3_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/C_k9me3.mfile

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/K_H3_sort.bam \
O=/home/roberto/deepa/h3k9me3/bam/K_H3_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/K_H3.mfile

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/K_input_sort.bam \
O=/home/roberto/deepa/h3k9me3/bam/K_input_rmdup.bam \
M=/home/roberto/deepa/h3k9me3/bam/K_input.mfile

java -jar /home/roberto/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/home/roberto/deepa/h3k9me3/bam/K_k9me3_sort.bam \
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

########
 /home/roberto/deepa/h3k9me3/bam/C_H3_rmdup.bam 
 /home/roberto/deepa/h3k9me3/bam/C_input_rmdup.bam 
 /home/roberto/deepa/h3k9me3/bam/C_k9me3_rmdup.bam 
 /home/roberto/deepa/h3k9me3/bam/K_H3_rmdup.bam 
 /home/roberto/deepa/h3k9me3/bam/K_input_rmdup.bam 
 /home/roberto/deepa/h3k9me3/bam/K_k9me3_rmdup.bam 
#
macs2 callpeak -f BAMPE -g hs -q 0.05 --broad --keep-dup auto -n control_H3 --outdir /home/roberto/deepa/h3k9me3/macs2/ \
-t /home/roberto/deepa/h3k9me3/bam/C_H3_rmdup.bam -c /home/roberto/deepa/h3k9me3/bam/C_input_rmdup.bam &

macs2 callpeak -f BAMPE -g hs -q 0.05 --broad --keep-dup auto -n control_k9me3 --outdir /home/roberto/deepa/h3k9me3/macs2/ \
-t /home/roberto/deepa/h3k9me3/bam/C_k9me3_rmdup.bam -c /home/roberto/deepa/h3k9me3/bam/C_input_rmdup.bam &

macs2 callpeak -f BAMPE -g hs -q 0.05 --broad --keep-dup auto -n siTIP60_H3 --outdir /home/roberto/deepa/h3k9me3/macs2/ \
-t /home/roberto/deepa/h3k9me3/bam/K_H3_rmdup.bam -c /home/roberto/deepa/h3k9me3/bam/K_input_rmdup.bam &

macs2 callpeak -f BAMPE -g hs -q 0.05 --broad --keep-dup auto -n siTIP60_k9me3 --outdir /home/roberto/deepa/h3k9me3/macs2/ \
-t /home/roberto/deepa/h3k9me3/bam/K_k9me3_rmdup.bam -c /home/roberto/deepa/h3k9me3/bam/K_input_rmdup.bam &
#

bamToBed -i /home/roberto/deepa/h3k9me3/bam/C_H3_rmdup.bam > /home/roberto/deepa/h3k9me3/bed/C_H3_rmdup.bed &
bamToBed -i /home/roberto/deepa/h3k9me3/bam/C_input_rmdup.bam > /home/roberto/deepa/h3k9me3/bed/C_input_rmdup.bed &
bamToBed -i /home/roberto/deepa/h3k9me3/bam/C_k9me3_rmdup.bam > /home/roberto/deepa/h3k9me3/bed/C_k9me3_rmdup.bed &

bamToBed -i /home/roberto/deepa/h3k9me3/bam/K_H3_rmdup.bam > /home/roberto/deepa/h3k9me3/bed/K_H3_rmdup.bed &
bamToBed -i /home/roberto/deepa/h3k9me3/bam/K_input_rmdup.bam > /home/roberto/deepa/h3k9me3/bed/K_input_rmdup.bed &
bamToBed -i /home/roberto/deepa/h3k9me3/bam/K_k9me3_rmdup.bam > /home/roberto/deepa/h3k9me3/bed/K_k9me3_rmdup.bed &

diffReps.pl --treatment /home/roberto/deepa/h3k9me3/bed/K_H3_rmdup.bed --control /home/roberto/deepa/h3k9me3/bed/C_H3_rmdup.bed \
--btr /home/roberto/deepa/h3k9me3/bed/K_input_rmdup.bed --bco /home/roberto/deepa/h3k9me3/bed/C_input_rmdup.bed \
--meth gt --gname hg19 --report /home/roberto/deepa/h3k9me3/bed/H3.diffreps --frag 0 --nproc 30 &

diffReps.pl --treatment /home/roberto/deepa/h3k9me3/bed/K_k9me3_rmdup.bed --control /home/roberto/deepa/h3k9me3/bed/C_k9me3_rmdup.bed \
--btr /home/roberto/deepa/h3k9me3/bed/K_input_rmdup.bed --bco /home/roberto/deepa/h3k9me3/bed/C_input_rmdup.bed \
--meth gt --gname hg19 --report /home/roberto/deepa/h3k9me3/bed/k9me3.diffreps --frag 0 --nproc 30 &

##

