############################################################################3
STAR --genomeDir /root/resources/star_hg38_overhang100 \
--readFilesCommand zcat \
--runThreadN 15 \
--winAnchorMultimapNmax 100 \
--outFilterMultimapNmax 100 \
--readFilesIn /root/sjlab/deepa_tetoolkit/fastq/HCT116_siC_1_val_1.fq.gz \
/root/sjlab/deepa_tetoolkit/fastq/HCT116_siC_2_val_2.fq.gz \
--outSAMtype BAM Unsorted \
--outFileNamePrefix /root/sjlab/deepa_tetoolkit/bam/siC_1_

samtools sort -n /root/sjlab/deepa_tetoolkit/bam/siC_1_*.bam > /root/sjlab/deepa_tetoolkit/bam/siC_1_sortName.bam 

STAR --genomeDir /root/resources/star_hg38_overhang100 \
--readFilesCommand zcat \
--runThreadN 15 \
--winAnchorMultimapNmax 100 \
--outFilterMultimapNmax 100 \
--readFilesIn /root/sjlab/deepa_tetoolkit/fastq/HCT_siControl_HWN2YCCXX_L5_1_val_1.fq.gz \
/root/sjlab/deepa_tetoolkit/fastq/HCT_siControl_HWN2YCCXX_L5_2_val_2.fq.gz \
--outSAMtype BAM Unsorted \
--outFileNamePrefix /root/sjlab/deepa_tetoolkit/bam/siC_2_

samtools sort -n /root/sjlab/deepa_tetoolkit/bam/siC_2_*.bam > /root/sjlab/deepa_tetoolkit/bam/siC_2_sortName.bam 

STAR --genomeDir /root/resources/star_hg38_overhang100 \
--readFilesCommand zcat \
--runThreadN 15 \
--winAnchorMultimapNmax 100 \
--outFilterMultimapNmax 100 \
--readFilesIn /root/sjlab/deepa_tetoolkit/fastq/HCT116_siK_1_val_1.fq.gz \
/root/sjlab/deepa_tetoolkit/fastq/HCT116_siK_2_val_2.fq.gz \
--outSAMtype BAM Unsorted \
--outFileNamePrefix /root/sjlab/deepa_tetoolkit/bam/siK_1_

samtools sort -n /root/sjlab/deepa_tetoolkit/bam/siK_1_*.bam > /root/sjlab/deepa_tetoolkit/bam/siK_1_sortName.bam 

STAR --genomeDir /root/resources/star_hg38_overhang100 \
--readFilesCommand zcat \
--runThreadN 15 \
--winAnchorMultimapNmax 100 \
--outFilterMultimapNmax 100 \
--readFilesIn /root/sjlab/deepa_tetoolkit/fastq/HCT_siK_HVNYLCCXX_L2_1_val_1.fq.gz \
/root/sjlab/deepa_tetoolkit/fastq/HCT_siK_HVNYLCCXX_L2_2_val_2.fq.gz \
--outSAMtype BAM Unsorted \
--outFileNamePrefix /root/sjlab/deepa_tetoolkit/bam/siK_2_

samtools sort -n /root/sjlab/deepa_tetoolkit/bam/siK_2_*.bam > /root/sjlab/deepa_tetoolkit/bam/siK_2_sortName.bam 
############################################################################################################

~/myPrograms/tetoolkit/bin/TEtranscripts  --sortByPos --format BAM --mode multi \
-c /home/rtm/SJlab/deepa/bam/HCT_DMSO_Aligned.sortedByCoord.out.bam \
-t /home/rtm/SJlab/deepa/bam/HCT_JQ1_Aligned.sortedByCoord.out.bam \
--GTF /root/sjlab/deepa_tetoolkit/references/gencode.v25.chr_patch_hapl_scaff.annotation.gtf \
--TE /root/sjlab/deepa_tetoolkit/references/hg38_rmsk_TE.gtf \
--project siC_vs_siK
