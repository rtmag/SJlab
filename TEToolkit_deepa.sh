
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

##
