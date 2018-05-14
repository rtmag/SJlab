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


python /root/myPrograms/RepEnrich/RepEnrich.py \
/root/sjlab/deepa_repenrich1/reference/hg38_repeatmasker_clean.txt \
/root/sjlab/STAR/test_rna/repenrich1 sic1 \
/root/sjlab/deepa_repenrich1/reference/RepEnrich_setup_hg38/ \
/root/sjlab/STAR/test_rna/sic1/siC_1_Unmapped.out.mate1 \
--fastqfile2 /root/sjlab/STAR/test_rna/sic1/siC_1_Unmapped.out.mate2 \
/root/sjlab/STAR/test_rna/sic1/siC_1_Aligned.sortedByCoord.out.bam \
--cpus 30 --pairedend TRUE


python /root/myPrograms/RepEnrich/RepEnrich.py \
/root/sjlab/deepa_repenrich1/reference/hg38_repeatmasker_clean.txt \
/root/sjlab/STAR/test_rna/repenrich1 sic2 \
/root/sjlab/deepa_repenrich1/reference/RepEnrich_setup_hg38/ \
/root/sjlab/STAR/test_rna/sic2/siC_2_Unmapped.out.mate1 \
--fastqfile2 /root/sjlab/STAR/test_rna/sic2/siC_2_Unmapped.out.mate2 \
/root/sjlab/STAR/test_rna/sic2/siC_2_Aligned.sortedByCoord.out.bam \
--cpus 30 --pairedend TRUE

python /root/myPrograms/RepEnrich/RepEnrich.py \
/root/sjlab/deepa_repenrich1/reference/hg38_repeatmasker_clean.txt \
/root/sjlab/STAR/test_rna/repenrich1 sik1 \
/root/sjlab/deepa_repenrich1/reference/RepEnrich_setup_hg38/ \
/root/sjlab/STAR/test_rna/sik1/siK_1_Unmapped.out.mate1 \
--fastqfile2 /root/sjlab/STAR/test_rna/sik1/siK_1_Unmapped.out.mate2 \
/root/sjlab/STAR/test_rna/sik1/siK_1_Aligned.sortedByCoord.out.bam \
--cpus 30 --pairedend TRUE

python /root/myPrograms/RepEnrich/RepEnrich.py \
/root/sjlab/deepa_repenrich1/reference/hg38_repeatmasker_clean.txt \
/root/sjlab/STAR/test_rna/repenrich1 sik2 \
/root/sjlab/deepa_repenrich1/reference/RepEnrich_setup_hg38/ \
/root/sjlab/STAR/test_rna/sik2/siK_2_Unmapped.out.mate1 \
--fastqfile2 /root/sjlab/STAR/test_rna/sik2/siK_2_Unmapped.out.mate2 \
/root/sjlab/STAR/test_rna/sik2/siK_2_Aligned.sortedByCoord.out.bam \
--cpus 30 --pairedend TRUE

