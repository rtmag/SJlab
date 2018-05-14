######
STAR --genomeDir /root/resources/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /root/sjlab/deepa_tetoolkit/fastq/HCT116_siC_1_val_1.fq.gz \
/root/sjlab/deepa_tetoolkit/fastq/HCT116_siC_2_val_2.fq.gz \
--outFilterMultimapNmax 1 \
--outReadsUnmapped Fastx \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /root/sjlab/STAR/test_rna/sic1/siC_1_

STAR --genomeDir /root/resources/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /root/sjlab/deepa_tetoolkit/fastq/HCT_siControl_HWN2YCCXX_L5_1_val_1.fq.gz \
/root/sjlab/deepa_tetoolkit/fastq/HCT_siControl_HWN2YCCXX_L5_2_val_2.fq.gz \
--outFilterMultimapNmax 1 \
--outReadsUnmapped Fastx \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /root/sjlab/STAR/test_rna/sic2/siC_2_

STAR --genomeDir /root/resources/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /root/sjlab/deepa_tetoolkit/fastq/HCT116_siK_1_val_1.fq.gz \
/root/sjlab/deepa_tetoolkit/fastq/HCT116_siK_2_val_2.fq.gz \
--outFilterMultimapNmax 1 \
--outReadsUnmapped Fastx \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /root/sjlab/STAR/test_rna/sik1/siK_1_

STAR --genomeDir /root/resources/hg38_noanno \
--readFilesCommand zcat \
--runThreadN 35 \
--alignIntronMax 1 \
--alignEndsType EndToEnd \
--readFilesIn /root/sjlab/deepa_tetoolkit/fastq/HCT_siK_HVNYLCCXX_L2_1_val_1.fq.gz \
/root/sjlab/deepa_tetoolkit/fastq/HCT_siK_HVNYLCCXX_L2_2_val_2.fq.gz \
--outFilterMultimapNmax 1 \
--outReadsUnmapped Fastx \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix /root/sjlab/STAR/test_rna/sik2/siK_2_
#####
