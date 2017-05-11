trim_galore --illumina --paired --clip_R1 12 --clip_R2 12 -o /home/roberto/deepa/novogene/trimmed \
/home/roberto/deepa/novogene/HCT116_siC_1.fq.gz \
/home/roberto/deepa/novogene/HCT116_siC_2.fq.gz  \
/home/roberto/deepa/novogene/HCT116_siC_DMSO_1.fq.gz  \
/home/roberto/deepa/novogene/HCT116_siC_DMSO_2.fq.gz  \
/home/roberto/deepa/novogene/HCT116_siC_JQ1_1.fq.gz  \
/home/roberto/deepa/novogene/HCT116_siC_JQ1_2.fq.gz  \
/home/roberto/deepa/novogene/HCT116_siIRF7_DMSO_1.fq.gz  \
/home/roberto/deepa/novogene/HCT116_siIRF7_DMSO_2.fq.gz  \
/home/roberto/deepa/novogene/HCT116_siIRF7_JQ1_1.fq.gz  \
/home/roberto/deepa/novogene/HCT116_siIRF7_JQ1_2.fq.gz  \
/home/roberto/deepa/novogene/HCT116_siK_1.fq.gz  \
/home/roberto/deepa/novogene/HCT116_siK_2.fq.gz  \
/home/roberto/deepa/novogene/HCT_DMSO_HWN2YCCXX_L2_1.fq.gz \
/home/roberto/deepa/novogene/HCT_DMSO_HWN2YCCXX_L2_2.fq.gz  \
/home/roberto/deepa/novogene/HCT_JQ1_HWN2YCCXX_L5_1.fq.gz  \
/home/roberto/deepa/novogene/HCT_JQ1_HWN2YCCXX_L5_2.fq.gz  \
/home/roberto/deepa/novogene/HCT_siControl_HWN2YCCXX_L5_1.fq.gz  \
/home/roberto/deepa/novogene/HCT_siControl_HWN2YCCXX_L5_2.fq.gz  \
/home/roberto/deepa/novogene/HCT_siK_HVNYLCCXX_L2_1.fq.gz  \
/home/roberto/deepa/novogene/HCT_siK_HVNYLCCXX_L2_2.fq.gz  \

#######
#1 old siC
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT_siControl_HWN2YCCXX_L5_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_siControl_HWN2YCCXX_L5_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_siControl_HWN2YCCXX_L5_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_siControl_HWN2YCCXX_L5_uniq.sam

#2 old siK
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT_siK_HVNYLCCXX_L2_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_siK_HVNYLCCXX_L2_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_siK_HVNYLCCXX_L2_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_siK_HVNYLCCXX_L2_uniq.sam

#3 new siC
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_uniq.sam

#4 new siK
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siK_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siK_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siK_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siK_uniq.sam

#5 old DMSO
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT_DMSO_HWN2YCCXX_L2_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_DMSO_HWN2YCCXX_L2_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_DMSO_HWN2YCCXX_L2_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_DMSO_HWN2YCCXX_L2_uniq.sam

#6 old JQ1
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT_JQ1_HWN2YCCXX_L5_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_JQ1_HWN2YCCXX_L5_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_JQ1_HWN2YCCXX_L5_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_JQ1_HWN2YCCXX_L5_uniq.sam

#7 new DMSO
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_DMSO_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_DMSO_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_DMSO_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_DMSO_uniq.sam

#8 new JQ1
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_JQ1_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_JQ1_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_JQ1_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_JQ1_uniq.sam

#9 siIRF7 DMSO
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_DMSO_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siIRF7_DMSO_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siIRF7_DMSO_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_DMSO_uniq.sam

#10 siIRF7 JQ1
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 30 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_JQ1_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siIRF7_JQ1_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siIRF7_JQ1_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_JQ1_uniq.sam

#####
cd /home/roberto/deepa/novogene/repenrich_bowtie/

samtools view -bS HCT_siControl_HWN2YCCXX_L5_uniq.sam | samtools sort - HCT_siControl_HWN2YCCXX_L5_uniq
samtools index HCT_siControl_HWN2YCCXX_L5_uniq.bam

samtools view -bS HCT_siK_HVNYLCCXX_L2_uniq.sam | samtools sort - HCT_siK_HVNYLCCXX_L2_uniq
samtools index HCT_siK_HVNYLCCXX_L2_uniq.bam

samtools view -bS HCT116_siC_uniq.sam | samtools sort - HCT116_siC_uniq
samtools index HCT116_siC_uniq.bam

samtools view -bS HCT116_siK_uniq.sam | samtools sort - HCT116_siK_uniq
samtools index HCT116_siK_uniq.bam

samtools view -bS HCT_DMSO_HWN2YCCXX_L2_uniq.sam | samtools sort - HCT_DMSO_HWN2YCCXX_L2_uniq
samtools index HCT_DMSO_HWN2YCCXX_L2_uniq.bam
##
samtools view -bS HCT_JQ1_HWN2YCCXX_L5_uniq.sam | samtools sort - HCT_JQ1_HWN2YCCXX_L5_uniq
samtools index HCT_JQ1_HWN2YCCXX_L5_uniq.bam

samtools view -bS HCT116_siC_DMSO_uniq.sam | samtools sort - HCT116_siC_DMSO_uniq
samtools index HCT116_siC_DMSO_uniq.bam

samtools view -bS HCT116_siC_JQ1_uniq.sam | samtools sort - HCT116_siC_JQ1_uniq
samtools index HCT116_siC_JQ1_uniq.bam

samtools view -bS HCT116_siIRF7_DMSO_uniq.sam | samtools sort - HCT116_siIRF7_DMSO_uniq
samtools index HCT116_siIRF7_DMSO_uniq.bam

samtools view -bS HCT116_siIRF7_JQ1_uniq.sam | samtools sort - HCT116_siIRF7_JQ1_uniq
samtools index HCT116_siIRF7_JQ1_uniq.bam

###




python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich HCT116_siC_DMSO \
/home/roberto/references/RepEnrich_hg19/ \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_DMSO_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_DMSO_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_DMSO_uniq.bam \
--cpus 30 --pairedend TRUE


python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich HCT116_siC_JQ1 \
/home/roberto/references/RepEnrich_hg19/ \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_JQ1_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_JQ1_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_JQ1_uniq.bam \
--cpus 30 --pairedend TRUE


python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich HCT_DMSO_HWN2YCCXX_L2 \
/home/roberto/references/RepEnrich_hg19/ \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_DMSO_HWN2YCCXX_L2_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie/HCT_DMSO_HWN2YCCXX_L2_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_DMSO_HWN2YCCXX_L2_uniq.bam \
--cpus 30 --pairedend TRUE


python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich HCT_JQ1_HWN2YCCXX_L5 \
/home/roberto/references/RepEnrich_hg19/ \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_JQ1_HWN2YCCXX_L5_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie/HCT_JQ1_HWN2YCCXX_L5_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_JQ1_HWN2YCCXX_L5_uniq.bam \
--cpus 30 --pairedend TRUE

####

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich HCT116_siC \
/home/roberto/references/RepEnrich_hg19/ \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_uniq.bam \
--cpus 30 --pairedend TRUE

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich HCT116_siK \
/home/roberto/references/RepEnrich_hg19/ \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siK_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siK_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siK_uniq.bam \
--cpus 30 --pairedend TRUE

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich HCT_siControl_HWN2YCCXX_L5 \
/home/roberto/references/RepEnrich_hg19/ \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_siControl_HWN2YCCXX_L5_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie/HCT_siControl_HWN2YCCXX_L5_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_siControl_HWN2YCCXX_L5_uniq.bam \
--cpus 30 --pairedend TRUE

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich HCT_siK_HVNYLCCXX_L2 \
/home/roberto/references/RepEnrich_hg19/ \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_siK_HVNYLCCXX_L2_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie/HCT_siK_HVNYLCCXX_L2_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_siK_HVNYLCCXX_L2_uniq.bam \
--cpus 30 --pairedend TRUE

##

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich HCT116_siIRF7_DMSO \
/home/roberto/references/RepEnrich_hg19/ \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_DMSO_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_DMSO_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_DMSO_uniq.bam \
--cpus 30 --pairedend TRUE


python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg19_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich HCT116_siIRF7_JQ1 \
/home/roberto/references/RepEnrich_hg19/ \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_JQ1_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_JQ1_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_JQ1_uniq.bam \
--cpus 30 --pairedend TRUE
