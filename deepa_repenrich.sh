trim_galore --illumina --clip_R1 12 -o /home/roberto/deepa/novogene/trimmed \
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
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT_siControl_HWN2YCCXX_L5_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_siControl_HWN2YCCXX_L5_1_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_siControl_HWN2YCCXX_L5_2_trimmed.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_siControl_HWN2YCCXX_L5_uniq.sam

#2 old siK
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT_siK_HVNYLCCXX_L2_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_siK_HVNYLCCXX_L2_1_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_siK_HVNYLCCXX_L2_2_trimmed.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_siK_HVNYLCCXX_L2_uniq.sam

#3 new siC
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_1_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_2_trimmed.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_uniq.sam

#4 new siK
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siK_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siK_1_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siK_2_trimmed.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siK_uniq.sam

#5 old DMSO
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT_DMSO_HWN2YCCXX_L2_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_DMSO_HWN2YCCXX_L2_1_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_DMSO_HWN2YCCXX_L2_2_trimmed.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_DMSO_HWN2YCCXX_L2_uniq.sam

#6 old JQ1
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT_JQ1_HWN2YCCXX_L5_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_JQ1_HWN2YCCXX_L5_1_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT_JQ1_HWN2YCCXX_L5_2_trimmed.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT_JQ1_HWN2YCCXX_L5_uniq.sam

#7 new DMSO
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_DMSO_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_DMSO_1_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_DMSO_2_trimmed.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_DMSO_uniq.sam

#8 new JQ1
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_JQ1_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_JQ1_1_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siC_JQ1_2_trimmed.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siC_JQ1_uniq.sam

#9 siIRF7 DMSO
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_DMSO_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siIRF7_DMSO_1_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siIRF7_DMSO_2_trimmed.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_DMSO_uniq.sam

#10 siIRF7 JQ1
bowtie /home/roberto/references/hg19_bowtie/hg19 -p 60 -t -m 1 -S --chunkmbs 2000 \
--max /home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_JQ1_multimap.fastq \
-1 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siIRF7_JQ1_1_trimmed.fq.gz ) \
-2 <( zcat /home/roberto/deepa/novogene/trimmed/HCT116_siIRF7_JQ1_2_trimmed.fq.gz ) \
/home/roberto/deepa/novogene/repenrich_bowtie/HCT116_siIRF7_JQ1_uniq.sam

#####

python RepEnrich.py \
/data/mm9_repeatmasker.txt \
/data/sample_A sample_A /data/hg19_setup_folder sampleA_multimap_1.fastq --fastqfile2 sampleA_multimap_2.fastq sampleA_unique.bam --cpus 16 --pairedend TRUE
