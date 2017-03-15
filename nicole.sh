# Motif discovery

# TSS 2kb upstream
more hg19_canonical_TSS_2.bed |cut -f 1,2,3,5,6|grep -v "#"| \
awk -F  "\t" \
'{if($4=="+"){print $1"\t"$2-2000"\t"$2"\t"$5"\t"1000"\t"$4} if($4=="-"){print $1"\t"$3"\t"$3+2000"\t"$5"\t"1000"\t"$4} }' \
> hg19_tss_2kb.bed

#####

STAR --genomeDir ~/resources/star_index_overhang100/ \
--readFilesCommand zcat \
--runThreadN 15 \
--readFilesIn /home/rtm/SJlab/nicole/bgi/cdts-hk.genomics.cn/F16FTSAPHT0948_HUMgqaE/Clean/LPCX-siC/FCHCYTLBBXX_L8_HKRDHUMgqaEAAARAAPEI-227_1.fq.gz \
/home/rtm/SJlab/nicole/bgi/cdts-hk.genomics.cn/F16FTSAPHT0948_HUMgqaE/Clean/LPCX-siC/FCHCYTLBBXX_L8_HKRDHUMgqaEAAARAAPEI-227_2.fq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/rtm/SJlab/nicole/bgi/bam/LPCX-siC_

STAR --genomeDir ~/resources/star_index_overhang100/ \
--readFilesCommand zcat \
--runThreadN 15 \
--readFilesIn /home/rtm/SJlab/nicole/bgi/cdts-hk.genomics.cn/F16FTSAPHT0948_HUMgqaE/Clean/LPCX-siK/FCHCYTLBBXX_L8_HKRDHUMgqaEAABRAAPEI-201_1.fq.gz \
/home/rtm/SJlab/nicole/bgi/cdts-hk.genomics.cn/F16FTSAPHT0948_HUMgqaE/Clean/LPCX-siK/FCHCYTLBBXX_L8_HKRDHUMgqaEAABRAAPEI-201_2.fq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/rtm/SJlab/nicole/bgi/bam/LPCX-siK_

STAR --genomeDir ~/resources/star_index_overhang100/ \
--readFilesCommand zcat \
--runThreadN 15 \
--readFilesIn /home/rtm/SJlab/nicole/bgi/cdts-hk.genomics.cn/F16FTSAPHT0948_HUMgqaE/Clean/TIP60-siC/FCHCYTLBBXX_L8_HKRDHUMgqaEAACRAAPEI-202_1.fq.gz \
/home/rtm/SJlab/nicole/bgi/cdts-hk.genomics.cn/F16FTSAPHT0948_HUMgqaE/Clean/TIP60-siC/FCHCYTLBBXX_L8_HKRDHUMgqaEAACRAAPEI-202_2.fq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/rtm/SJlab/nicole/bgi/bam/TIP60-siC_

STAR --genomeDir ~/resources/star_index_overhang100/ \
--readFilesCommand zcat \
--runThreadN 15 \
--readFilesIn /home/rtm/SJlab/nicole/bgi/cdts-hk.genomics.cn/F16FTSAPHT0948_HUMgqaE/Clean/TIP60-siK/FCHCYTLBBXX_L8_HKRDHUMgqaEAADRAAPEI-205_1.fq.gz \
/home/rtm/SJlab/nicole/bgi/cdts-hk.genomics.cn/F16FTSAPHT0948_HUMgqaE/Clean/TIP60-siK/FCHCYTLBBXX_L8_HKRDHUMgqaEAADRAAPEI-205_2.fq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/rtm/SJlab/nicole/bgi/bam/TIP60-siK_

##########

samtools merge TIP60-siC.bam ../bam/TIP60-siC_L7_Aligned.out.bam ../bam/TIP60-siC_L4_Aligned.out.bam
samtools merge TIP60-siK.bam ../bam/TIP60-siK_L7_Aligned.out.bam ../bam/TIP60-siK_L4_Aligned.out.bam

samtools merge LPCX-siC.bam ../bam/LPCX-siC_L7_Aligned.out.bam ../bam/LPCX-siC_L4_Aligned.out.bam
samtools merge LPCX-siK.bam ../bam/LPCX-siK_L7_Aligned.out.bam ../bam/LPCX-siK_L4_Aligned.out.bam

samtools merge LPCX.bam ../bam/LPCX_L4_Aligned.out.bam ../bam/LPCX_L7_Aligned.out.bam

#####

STAR --genomeDir ~/resources/star_index_overhang100/ \
--readFilesCommand zcat \
--runThreadN 15 \
--readFilesIn /home/rtm/SJlab/nicole/Nicole-HeLa_siC_siK_Feb_2015/FCC6M77ACXX-HUMedoEAAARAAPEI-207_L4_1.fq.gz \
/home/rtm/SJlab/nicole/Nicole-HeLa_siC_siK_Feb_2015/FCC6M77ACXX-HUMedoEAAARAAPEI-207_L4_2.fq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/rtm/SJlab/nicole/bgi/bam/feb2015_207_

STAR --genomeDir ~/resources/star_index_overhang100/ \
--readFilesCommand zcat \
--runThreadN 15 \
--readFilesIn /home/rtm/SJlab/nicole/Nicole-HeLa_siC_siK_Feb_2015/FCC6M77ACXX-HUMedoEAABRAAPEI-208_L4_1.fq.gz \
/home/rtm/SJlab/nicole/Nicole-HeLa_siC_siK_Feb_2015/FCC6M77ACXX-HUMedoEAABRAAPEI-208_L4_2.fq.gz \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/rtm/SJlab/nicole/bgi/bam/feb2015_208_


STAR --genomeDir ~/resources/star_index_overhang100/ \
--runThreadN 15 \
--readFilesIn /home/rtm/SJlab/nicole/Vanitha_RNA_seq_2014/Clean/HeLa_LPCX/FCC55PTACXX_L8_WHHUMhteEAAARAAPEI-95_1.fq \
/home/rtm/SJlab/nicole/Vanitha_RNA_seq_2014/Clean/HeLa_LPCX/FCC55PTACXX_L8_WHHUMhteEAAARAAPEI-95_2.fq \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/rtm/SJlab/nicole/bgi/bam/vanitha_LPCX_

STAR --genomeDir ~/resources/star_index_overhang100/ \
--runThreadN 15 \
--readFilesIn /home/rtm/SJlab/nicole/Vanitha_RNA_seq_2014/Clean/HELa_TIP60/FCC55PTACXX_L8_WHHUMhteEAABRAAPEI-113_1.fq \
/home/rtm/SJlab/nicole/Vanitha_RNA_seq_2014/Clean/HELa_TIP60/FCC55PTACXX_L8_WHHUMhteEAABRAAPEI-113_2.fq \
--outSAMtype BAM SortedByCoordinate  \
--outFileNamePrefix /home/rtm/SJlab/nicole/bgi/bam/vanitha_TIP60_
