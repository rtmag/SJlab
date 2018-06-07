#######
#1 old siC
bowtie /home/roberto/references/hg38_bowtie/hg38 -p 45 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie2/HCT_siControl_HWN2YCCXX_L5_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_siControl_HWN2YCCXX_L5_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_siControl_HWN2YCCXX_L5_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT_siControl_HWN2YCCXX_L5_uniq.sam 2> /home/roberto/deepa/novogene/repenrich_bowtie2/HCT_siControl.log

#2 old siK
bowtie /home/roberto/references/hg38_bowtie/hg38 -p 45 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie2/HCT_siK_HVNYLCCXX_L2_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_siK_HVNYLCCXX_L2_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_siK_HVNYLCCXX_L2_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT_siK_HVNYLCCXX_L2_uniq.sam 2> /home/roberto/deepa/novogene/repenrich_bowtie2/HCT_siK.log

#3 new siC
bowtie /home/roberto/references/hg38_bowtie/hg38 -p 45 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_uniq.sam 2> /home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC.log

#4 new siK
bowtie /home/roberto/references/hg38_bowtie/hg38 -p 45 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siK_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siK_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siK_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siK_uniq.sam 2> /home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siK.log

#5 old DMSO
bowtie /home/roberto/references/hg38_bowtie/hg38 -p 45 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie2/HCT_DMSO_HWN2YCCXX_L2_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_DMSO_HWN2YCCXX_L2_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_DMSO_HWN2YCCXX_L2_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT_DMSO_HWN2YCCXX_L2_uniq.sam 2> /home/roberto/deepa/novogene/repenrich_bowtie2/HCT_DMSO.log

#6 old JQ1
bowtie /home/roberto/references/hg38_bowtie/hg38 -p 45 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie2/HCT_JQ1_HWN2YCCXX_L5_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_JQ1_HWN2YCCXX_L5_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_JQ1_HWN2YCCXX_L5_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT_JQ1_HWN2YCCXX_L5_uniq.sam 2> /home/roberto/deepa/novogene/repenrich_bowtie2/HCT_JQ1.log

#7 new DMSO
bowtie /home/roberto/references/hg38_bowtie/hg38 -p 45 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_DMSO_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_DMSO_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_DMSO_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_DMSO_uniq.sam 2> /home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_DMSO.log

#8 new JQ1
bowtie /home/roberto/references/hg38_bowtie/hg38 -p 45 -t -m 1 -S --chunkmbs 4000 -X 1000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_JQ1_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_JQ1_1_val_1.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_JQ1_2_val_2.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_JQ1_uniq.sam 2> /home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_JQ1.log

#####
cd /home/roberto/deepa/novogene/repenrich_bowtie2/

samtools view -bS HCT_siControl_HWN2YCCXX_L5_uniq.sam | samtools sort - HCT_siControl_HWN2YCCXX_L5_uniq &
samtools view -bS HCT_siK_HVNYLCCXX_L2_uniq.sam | samtools sort - HCT_siK_HVNYLCCXX_L2_uniq &
samtools view -bS HCT116_siC_uniq.sam | samtools sort - HCT116_siC_uniq &
samtools view -bS HCT116_siK_uniq.sam | samtools sort - HCT116_siK_uniq &
#
samtools view -bS HCT_DMSO_HWN2YCCXX_L2_uniq.sam | samtools sort - HCT_DMSO_HWN2YCCXX_L2_uniq &
samtools view -bS HCT_JQ1_HWN2YCCXX_L5_uniq.sam | samtools sort - HCT_JQ1_HWN2YCCXX_L5_uniq &
samtools view -bS HCT116_siC_DMSO_uniq.sam | samtools sort - HCT116_siC_DMSO_uniq &
samtools view -bS HCT116_siC_JQ1_uniq.sam | samtools sort - HCT116_siC_JQ1_uniq &
#
samtools index HCT_siControl_HWN2YCCXX_L5_uniq.bam &
samtools index HCT_siK_HVNYLCCXX_L2_uniq.bam &
samtools index HCT116_siC_uniq.bam &
samtools index HCT116_siK_uniq.bam &
#
samtools index HCT_DMSO_HWN2YCCXX_L2_uniq.bam &
samtools index HCT_JQ1_HWN2YCCXX_L5_uniq.bam &
samtools index HCT116_siC_DMSO_uniq.bam &
samtools index HCT116_siC_JQ1_uniq.bam &

####################################################################################################################################

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg38_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich2 HCT116_siC \
/home/roberto/references/RepEnrich_setup_hg38/ \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_uniq.bam \
--cpus 45 --pairedend TRUE &> /home/roberto/deepa/novogene/repenrich2/HCT116_siC.log

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg38_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich2 HCT116_siK \
/home/roberto/references/RepEnrich_setup_hg38/ \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siK_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siK_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siK_uniq.bam \
--cpus 45 --pairedend TRUE &> /home/roberto/deepa/novogene/repenrich2/HCT116_siK.log

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg38_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich2 HCT_siControl_HWN2YCCXX_L5 \
/home/roberto/references/RepEnrich_setup_hg38/ \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT_siControl_HWN2YCCXX_L5_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie2/HCT_siControl_HWN2YCCXX_L5_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT_siControl_HWN2YCCXX_L5_uniq.bam \
--cpus 45 --pairedend TRUE &> /home/roberto/deepa/novogene/repenrich2/HCT_siControl_HWN2YCCXX_L5.log

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg38_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich2 HCT_siK_HVNYLCCXX_L2 \
/home/roberto/references/RepEnrich_setup_hg38/ \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT_siK_HVNYLCCXX_L2_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie2/HCT_siK_HVNYLCCXX_L2_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT_siK_HVNYLCCXX_L2_uniq.bam \
--cpus 45 --pairedend TRUE &> /home/roberto/deepa/novogene/repenrich2/HCT_siK_HVNYLCCXX_L2.log

###########################################################


python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg38_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich2 HCT116_siC_DMSO \
/home/roberto/references/RepEnrich_setup_hg38/ \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_DMSO_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_DMSO_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_DMSO_uniq.bam \
--cpus 45 --pairedend TRUE &> /home/roberto/deepa/novogene/repenrich2/HCT116_siC_DMSO.log


python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg38_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich2 HCT116_siC_JQ1 \
/home/roberto/references/RepEnrich_setup_hg38/ \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_JQ1_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_JQ1_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT116_siC_JQ1_uniq.bam \
--cpus 45 --pairedend TRUE &> /home/roberto/deepa/novogene/repenrich2/HCT116_siC_JQ1.log

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg38_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich2 HCT_DMSO_HWN2YCCXX_L2 \
/home/roberto/references/RepEnrich_setup_hg38/ \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT_DMSO_HWN2YCCXX_L2_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie2/HCT_DMSO_HWN2YCCXX_L2_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT_DMSO_HWN2YCCXX_L2_uniq.bam \
--cpus 45 --pairedend TRUE &> /home/roberto/deepa/novogene/repenrich2/HCT_DMSO_HWN2YCCXX_L2.log

python /home/roberto/myPrograms/RepEnrich/RepEnrich.py \
/home/roberto/references/hg38_repeatmasker_clean.txt \
/home/roberto/deepa/novogene/repenrich2 HCT_JQ1_HWN2YCCXX_L5 \
/home/roberto/references/RepEnrich_setup_hg38/ \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT_JQ1_HWN2YCCXX_L5_multimap_1.fastq \
--fastqfile2 /home/roberto/deepa/novogene/repenrich_bowtie2/HCT_JQ1_HWN2YCCXX_L5_multimap_2.fastq \
/home/roberto/deepa/novogene/repenrich_bowtie2/HCT_JQ1_HWN2YCCXX_L5_uniq.bam \
--cpus 45 --pairedend TRUE &> /home/roberto/deepa/novogene/repenrich2/HCT_JQ1_HWN2YCCXX_L5.log

####


