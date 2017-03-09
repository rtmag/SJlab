
STAR --genomeDir /home/rtm/resources/hg38/star/star_hg38_overhang100 \
--readFilesCommand zcat \
--runThreadN 15 \
--winAnchorMultimapNmax 100 \
--outFilterMultimapNmax 100 \
--readFilesIn /home/rtm/SJlab/deepa/clean_data/HCT_DMSO_HWN2YCCXX_L2_1.clean.fq.gz \
/home/rtm/SJlab/deepa/clean_data/HCT_DMSO_HWN2YCCXX_L2_2.clean.fq.gz  \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix HCT_DMSO_


STAR --genomeDir /home/rtm/resources/hg38/star/star_hg38_overhang100 \
--readFilesCommand zcat \
--runThreadN 15 \
--winAnchorMultimapNmax 100 \
--outFilterMultimapNmax 100 \
--readFilesIn /home/rtm/SJlab/deepa/clean_data/HCT_JQ1_HWN2YCCXX_L5_1.clean.fq.gz \
/home/rtm/SJlab/deepa/clean_data/HCT_JQ1_HWN2YCCXX_L5_2.clean.fq.gz  \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix HCT_JQ1_

STAR --genomeDir /home/rtm/resources/hg38/star/star_hg38_overhang100 \
--readFilesCommand zcat \
--runThreadN 15 \
--winAnchorMultimapNmax 100 \
--outFilterMultimapNmax 100 \
--readFilesIn /home/rtm/SJlab/deepa/clean_data/HCT_siControl_HWN2YCCXX_L5_1.clean.fq.gz \
/home/rtm/SJlab/deepa/clean_data/HCT_siControl_HWN2YCCXX_L5_2.clean.fq.gz  \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix HCT_siC_

STAR --genomeDir /home/rtm/resources/hg38/star/star_hg38_overhang100 \
--readFilesCommand zcat \
--runThreadN 15 \
--winAnchorMultimapNmax 100 \
--outFilterMultimapNmax 100 \
--readFilesIn /home/rtm/SJlab/deepa/clean_data/HCT_siK_HVNYLCCXX_L2_1.clean.fq.gz \
/home/rtm/SJlab/deepa/clean_data/HCT_siK_HVNYLCCXX_L2_2.clean.fq.gz  \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix HCT_siK_

# INSTALLATION NOTE
# WROKS WITH PYSAM 8.4: pip install pysam==0.8.4

##
~/myPrograms/tetoolkit/bin/TEtranscripts  --sortByPos --format BAM --mode multi \
-c /home/rtm/SJlab/deepa/bam/HCT_DMSO_Aligned.sortedByCoord.out.bam \
-t /home/rtm/SJlab/deepa/bam/HCT_JQ1_Aligned.sortedByCoord.out.bam \
--GTF ~/resources/hg38/star/gencode.v25.annotation.gtf \
--TE ~/SJlab/deepa/hg38_rmsk_TE.gtf \
--project DMSO_vs_JQ1

~/myPrograms/tetoolkit/bin/TEtranscripts --sortByPos --format BAM --mode multi  \
-c /home/rtm/SJlab/deepa/bam/HCT_siC_Aligned.sortedByCoord.out.bam \
-t /home/rtm/SJlab/deepa/bam/HCT_siK_Aligned.sortedByCoord.out.bam \
--GTF ~/resources/hg38/star/gencode.v25.annotation.gtf \
--TE ~/SJlab/deepa/hg38_rmsk_TE.gtf \
--project siC_vs_siK



