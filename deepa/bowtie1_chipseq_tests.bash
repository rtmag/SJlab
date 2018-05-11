# siControl_H3K9me3_novogene.log

bowtie /root/resources/hg38_bowtie/hg38 \
-p 30 -t -m 1 -S --chunkmbs 4000 \
--max /root/sjlab/deepa_repenrich1/bowtie/TEST_siControl_H3K9me3_novogene_multimap.fastq \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_5_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_5_2.fq.gz) \
/root/sjlab/deepa_repenrich1/bowtie/TEST_siControl_H3K9me3_novogene.sam 2> /root/sjlab/deepa_repenrich1/bowtie/TEST_siControl_H3K9me3_novogene.log

###############################################################################################################################

STAR --genomeDir /root/resources/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /root/sjlab/deepa/fastq_novogene/c_5_1.fq.gz \
/root/sjlab/deepa/fastq_novogene/c_5_2.fq.gz \
--outSAMtype BAM Unsorted \
--outFileNamePrefix /root/sjlab/STAR/TEST_siControl_H3K9me3_novogene_untrimmed_STAR_

STAR --genomeDir /root/resources/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /root/sjlab/deepa/fastq_novogene/c_5_1_val_1.fq.gz \
/root/sjlab/deepa/fastq_novogene/c_5_2_val_2.fq.gz \
--outSAMtype BAM Unsorted \
--outFileNamePrefix /root/sjlab/STAR/TEST_siControl_H3K9me3_novogene_trimmed_STAR_

##########################################################################################
