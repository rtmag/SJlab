python /root/myPrograms/RepEnrich2/RepEnrich2_setup.py \
/root/sjlab/deepa/repenrich2_ref/hg38_repeatmasker.txt \
/root/resources/hg38_allchr.fasta \
/root/sjlab/deepa/repenrich2_ref/repenrich2_setup_hg38

######################################
cat \
C-H3_S6_L001_R1_001_val_1.fq.gz \
C-H3_S6_L002_R1_001_val_1.fq.gz \
C-H3_S6_L003_R1_001_val_1.fq.gz \
C-H3_S6_L004_R1_001_val_1.fq.gz \
> C-H3_R1.fq.gz

cat \
C-H3_S6_L001_R2_001_val_2.fq.gz \
C-H3_S6_L002_R2_001_val_2.fq.gz \
C-H3_S6_L003_R2_001_val_2.fq.gz \
C-H3_S6_L004_R2_001_val_2.fq.gz \
> C-H3_R2.fq.gz
######################################
cat \
C-input_S5_L001_R1_001_val_1.fq.gz \
C-input_S5_L002_R1_001_val_1.fq.gz \
C-input_S5_L003_R1_001_val_1.fq.gz \
C-input_S5_L004_R1_001_val_1.fq.gz \
> C-input_R1.fq.gz 

cat \
C-input_S5_L001_R2_001_val_2.fq.gz \
C-input_S5_L002_R2_001_val_2.fq.gz \
C-input_S5_L003_R2_001_val_2.fq.gz \
C-input_S5_L004_R2_001_val_2.fq.gz \
> C-input_R2.fq.gz 
######################################
cat \
C-k9me3_S4_L001_R1_001_val_1.fq.gz \
C-k9me3_S4_L002_R1_001_val_1.fq.gz \
C-k9me3_S4_L003_R1_001_val_1.fq.gz \
C-k9me3_S4_L004_R1_001_val_1.fq.gz \
> C-k9me3_R1.fq.gz 

cat \
C-k9me3_S4_L001_R2_001_val_2.fq.gz \
C-k9me3_S4_L002_R2_001_val_2.fq.gz \
C-k9me3_S4_L003_R2_001_val_2.fq.gz \
C-k9me3_S4_L004_R2_001_val_2.fq.gz \
> C-k9me3_R2.fq.gz 
######################################
cat \
K-H3_S2_L001_R1_001_val_1.fq.gz \
K-H3_S2_L002_R1_001_val_1.fq.gz \
K-H3_S2_L003_R1_001_val_1.fq.gz \
K-H3_S2_L004_R1_001_val_1.fq.gz \
> K-H3_R1.fq.gz

cat \
K-H3_S2_L001_R2_001_val_2.fq.gz \
K-H3_S2_L002_R2_001_val_2.fq.gz \
K-H3_S2_L003_R2_001_val_2.fq.gz \
K-H3_S2_L004_R2_001_val_2.fq.gz \
> K-H3_R2.fq.gz
######################################
cat \
K-input_S3_L001_R1_001_val_1.fq.gz \
K-input_S3_L002_R1_001_val_1.fq.gz \
K-input_S3_L003_R1_001_val_1.fq.gz \
K-input_S3_L004_R1_001_val_1.fq.gz \
> K-input_R1.fq.gz

cat \
K-input_S3_L001_R2_001_val_2.fq.gz \
K-input_S3_L002_R2_001_val_2.fq.gz \
K-input_S3_L003_R2_001_val_2.fq.gz \
K-input_S3_L004_R2_001_val_2.fq.gz \
> K-input_R2.fq.gz
######################################
cat \
K-k9me3_S1_L001_R1_001_val_1.fq.gz \
K-k9me3_S1_L002_R1_001_val_1.fq.gz \
K-k9me3_S1_L003_R1_001_val_1.fq.gz \
K-k9me3_S1_L004_R1_001_val_1.fq.gz \
> K-k9me3_R1.fq.gz

cat \
K-k9me3_S1_L001_R2_001_val_2.fq.gz \
K-k9me3_S1_L002_R2_001_val_2.fq.gz \
K-k9me3_S1_L003_R2_001_val_2.fq.gz \
K-k9me3_S1_L004_R2_001_val_2.fq.gz \
> K-k9me3_R2.fq.gz
######################################


bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_steph/C-H3_R1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_steph/C-H3_R2.fq.gz) \
-S /root/sjlab/deepa/bam_steph/C-H3.sam

samtools view -bS /root/sjlab/deepa/bam_steph/C-H3.sam > /root/sjlab/deepa/bam_steph/C-H3.bam
rm /root/sjlab/deepa/bam_steph/C-H3.sam

python /root/myPrograms/RepEnrich2/RepEnrich2_subset.py /root/sjlab/deepa/bam_steph/C-H3.bam 30 siControl_H3_steph --pairedend TRUE
#
bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_steph/C-input_R1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_steph/C-input_R2.fq.gz) \
-S /root/sjlab/deepa/bam_steph/C-input.sam

samtools view -bS /root/sjlab/deepa/bam_steph/C-input.sam > /root/sjlab/deepa/bam_steph/C-input.bam
rm /root/sjlab/deepa/bam_steph/C-input.sam

python /root/myPrograms/RepEnrich2/RepEnrich2_subset.py /root/sjlab/deepa/bam_steph/C-input.bam 30 siControl_input_steph --pairedend TRUE
#
bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_steph/C-k9me3_R1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_steph/C-k9me3_R2.fq.gz) \
-S /root/sjlab/deepa/bam_steph/C-k9me3.sam

samtools view -bS /root/sjlab/deepa/bam_steph/C-k9me3.sam > /root/sjlab/deepa/bam_steph/C-k9me3.bam
rm /root/sjlab/deepa/bam_steph/C-k9me3.sam

python /root/myPrograms/RepEnrich2/RepEnrich2_subset.py /root/sjlab/deepa/bam_steph/C-k9me3.bam 30 siControl_H3K9me3_steph --pairedend TRUE
#
######################################

bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_steph/K-H3_R1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_steph/K-H3_R2.fq.gz) \
-S /root/sjlab/deepa/bam_steph/K-H3.sam

samtools view -bS /root/sjlab/deepa/bam_steph/K-H3.sam > /root/sjlab/deepa/bam_steph/K-H3.bam
rm /root/sjlab/deepa/bam_steph/K-H3.sam

python /root/myPrograms/RepEnrich2/RepEnrich2_subset.py /root/sjlab/deepa/bam_steph/K-H3.bam 30 siTIP60_H3_steph --pairedend TRUE
#
bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_steph/K-input_R1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_steph/K-input_R2.fq.gz) \
-S /root/sjlab/deepa/bam_steph/K-input.sam

samtools view -bS /root/sjlab/deepa/bam_steph/K-input.sam > /root/sjlab/deepa/bam_steph/K-input.bam
rm /root/sjlab/deepa/bam_steph/K-input.sam

python /root/myPrograms/RepEnrich2/RepEnrich2_subset.py /root/sjlab/deepa/bam_steph/K-input.bam 30 siTIP60_input_steph --pairedend TRUE
#
bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_steph/K-k9me3_R1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_steph/K-k9me3_R2.fq.gz) \
-S /root/sjlab/deepa/bam_steph/K-k9me3.sam

samtools view -bS /root/sjlab/deepa/bam_steph/K-k9me3.sam > /root/sjlab/deepa/bam_steph/K-k9me3.bam
rm /root/sjlab/deepa/bam_steph/K-k9me3.sam

python /root/myPrograms/RepEnrich2/RepEnrich2_subset.py /root/sjlab/deepa/bam_steph/K-k9me3.bam 30 siTIP60_H3K9me3_steph --pairedend TRUE

######################################


bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_1_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_1_2_val_2.fq.gz) \
-S /root/sjlab/deepa/bam_novogene/siControl_INPUT.sam

samtools view -bS /root/sjlab/deepa/bam_novogene/siControl_INPUT.sam > /root/sjlab/deepa/bam_novogene/siControl_INPUT.bam
rm /root/sjlab/deepa/bam_novogene/siControl_INPUT.sam

python /root/myPrograms/RepEnrich2/RepEnrich2_subset.py /root/sjlab/deepa/bam_novogene/siControl_INPUT.bam 30 siControl_INPUT_novogene --pairedend TRUE

bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_2_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_2_2_val_2.fq.gz) \
-S /root/sjlab/deepa/bam_novogene/siTIP60_INPUT.sam

samtools view -bS /root/sjlab/deepa/bam_novogene/siTIP60_INPUT.sam > /root/sjlab/deepa/bam_novogene/siTIP60_INPUT.bam
rm /root/sjlab/deepa/bam_novogene/siTIP60_INPUT.sam

python /root/myPrograms/RepEnrich2/RepEnrich2_subset.py /root/sjlab/deepa/bam_novogene/siTIP60_INPUT.bam 30 siTIP60_INPUT_novogene --pairedend TRUE

bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_3_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_3_2_val_2.fq.gz) \
-S /root/sjlab/deepa/bam_novogene/siControl_H3.sam

samtools view -bS /root/sjlab/deepa/bam_novogene/siControl_H3.sam > /root/sjlab/deepa/bam_novogene/siControl_H3.bam
rm /root/sjlab/deepa/bam_novogene/siControl_H3.sam

python /root/myPrograms/RepEnrich2/RepEnrich2_subset.py /root/sjlab/deepa/bam_novogene/siControl_H3.bam 30 siControl_H3_novogene --pairedend TRUE

bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_4_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_4_2_val_2.fq.gz) \
-S /root/sjlab/deepa/bam_novogene/siTIP60_H3.sam

samtools view -bS /root/sjlab/deepa/bam_novogene/siTIP60_H3.sam > /root/sjlab/deepa/bam_novogene/siTIP60_H3.bam
rm /root/sjlab/deepa/bam_novogene/siTIP60_H3.sam

python /root/myPrograms/RepEnrich2/RepEnrich2_subset.py /root/sjlab/deepa/bam_novogene/siTIP60_H3.bam 30 siTIP60_H3_novogene --pairedend TRUE

bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_5_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_5_2_val_2.fq.gz) \
-S /root/sjlab/deepa/bam_novogene/siControl_H3K9me3.sam

samtools view -bS /root/sjlab/deepa/bam_novogene/siControl_H3K9me3.sam > /root/sjlab/deepa/bam_novogene/siControl_H3K9me3.bam
rm /root/sjlab/deepa/bam_novogene/siControl_H3K9me3.sam

python /root/myPrograms/RepEnrich2/RepEnrich2_subset.py /root/sjlab/deepa/bam_novogene/siControl_H3K9me3.bam 30 siControl_H3K9me3_novogene --pairedend TRUE

bowtie2 -q -p 16 -x /root/resources/hg38_bowtie2/hg38 \
-1 <(zcat /root/sjlab/deepa/fastq_novogene/c_6_1_val_1.fq.gz) \
-2 <(zcat /root/sjlab/deepa/fastq_novogene/c_6_2_val_2.fq.gz) \
-S /root/sjlab/deepa/bam_novogene/siTIP60_H3K9me3.sam

samtools view -bS /root/sjlab/deepa/bam_novogene/siTIP60_H3K9me3.sam > /root/sjlab/deepa/bam_novogene/siTIP60_H3K9me3.bam
rm /root/sjlab/deepa/bam_novogene/siTIP60_H3K9me3.sam

python /root/myPrograms/RepEnrich2/RepEnrich2_subset.py /root/sjlab/deepa/bam_novogene/siTIP60_H3K9me3.bam 30 siTIP60_H3K9me3_novogene --pairedend TRUE

######################################################################################################################

python RepEnrich2.py /root/sjlab/deepa/repenrich2_ref/hg38_repeatmasker.txt \
/root/sjlab/deepa/repenrich_results/ \
siControl_H3K9me3_novogene \
/root/sjlab/deepa/repenrich2_ref/repenrich2_setup_hg38/ \
/root/sjlab/deepa/repenrich2_subset/siControl_H3K9me3_novogene_multimap_R1.fastq \
--fastqfile2 /root/sjlab/deepa/repenrich2_subset/siControl_H3K9me3_novogene_multimap_R2.fastq \
/root/sjlab/deepa/repenrich2_subset/siControl_H3K9me3_novogene_unique.bam --cpus 16 --pairedend TRUE

python RepEnrich2.py /root/sjlab/deepa/repenrich2_ref/hg38_repeatmasker.txt \
/root/sjlab/deepa/repenrich_results/ \
siControl_H3K9me3_steph \
/root/sjlab/deepa/repenrich2_ref/repenrich2_setup_hg38/ \
/root/sjlab/deepa/repenrich2_subset/siControl_H3K9me3_steph_multimap_R1.fastq \
--fastqfile2 /root/sjlab/deepa/repenrich2_subset/siControl_H3K9me3_steph_multimap_R2.fastq \
/root/sjlab/deepa/repenrich2_subset/siControl_H3K9me3_steph_unique.bam --cpus 16 --pairedend TRUE

python RepEnrich2.py /root/sjlab/deepa/repenrich2_ref/hg38_repeatmasker.txt \
/root/sjlab/deepa/repenrich_results/ \
siControl_H3_novogene \
/root/sjlab/deepa/repenrich2_ref/repenrich2_setup_hg38/ \
/root/sjlab/deepa/repenrich2_subset/siControl_H3_novogene_multimap_R1.fastq \
--fastqfile2 /root/sjlab/deepa/repenrich2_subset/siControl_H3_novogene_multimap_R2.fastq \
/root/sjlab/deepa/repenrich2_subset/siControl_H3_novogene_unique.bam --cpus 16 --pairedend TRUE

python RepEnrich2.py /root/sjlab/deepa/repenrich2_ref/hg38_repeatmasker.txt \
/root/sjlab/deepa/repenrich_results/ \
siControl_H3_steph \
/root/sjlab/deepa/repenrich2_ref/repenrich2_setup_hg38/ \
/root/sjlab/deepa/repenrich2_subset/siControl_H3_steph_multimap_R1.fastq \
--fastqfile2 /root/sjlab/deepa/repenrich2_subset/siControl_H3_steph_multimap_R2.fastq \
/root/sjlab/deepa/repenrich2_subset/siControl_H3_steph_unique.bam --cpus 16 --pairedend TRUE
#
python RepEnrich2.py /root/sjlab/deepa/repenrich2_ref/hg38_repeatmasker.txt \
/root/sjlab/deepa/repenrich_results/ \
siTIP60_H3K9me3_novogene \
/root/sjlab/deepa/repenrich2_ref/repenrich2_setup_hg38/ \
/root/sjlab/deepa/repenrich2_subset/siTIP60_H3K9me3_novogene_multimap_R1.fastq \
--fastqfile2 /root/sjlab/deepa/repenrich2_subset/siTIP60_H3K9me3_novogene_multimap_R2.fastq \
/root/sjlab/deepa/repenrich2_subset/siTIP60_H3K9me3_novogene_unique.bam --cpus 16 --pairedend TRUE

python RepEnrich2.py /root/sjlab/deepa/repenrich2_ref/hg38_repeatmasker.txt \
/root/sjlab/deepa/repenrich_results/ \
siTIP60_H3K9me3_steph \
/root/sjlab/deepa/repenrich2_ref/repenrich2_setup_hg38/ \
/root/sjlab/deepa/repenrich2_subset/siTIP60_H3K9me3_steph_multimap_R1.fastq \
--fastqfile2 /root/sjlab/deepa/repenrich2_subset/siTIP60_H3K9me3_steph_multimap_R2.fastq \
/root/sjlab/deepa/repenrich2_subset/siTIP60_H3K9me3_steph_unique.bam --cpus 16 --pairedend TRUE

python RepEnrich2.py /root/sjlab/deepa/repenrich2_ref/hg38_repeatmasker.txt \
/root/sjlab/deepa/repenrich_results/ \
siTIP60_H3_novogene \
/root/sjlab/deepa/repenrich2_ref/repenrich2_setup_hg38/ \
/root/sjlab/deepa/repenrich2_subset/siTIP60_H3_novogene_multimap_R1.fastq \
--fastqfile2 /root/sjlab/deepa/repenrich2_subset/siTIP60_H3_novogene_multimap_R2.fastq \
/root/sjlab/deepa/repenrich2_subset/siTIP60_H3_novogene_unique.bam --cpus 16 --pairedend TRUE

python RepEnrich2.py /root/sjlab/deepa/repenrich2_ref/hg38_repeatmasker.txt \
/root/sjlab/deepa/repenrich_results/ \
siTIP60_H3_steph \
/root/sjlab/deepa/repenrich2_ref/repenrich2_setup_hg38/ \
/root/sjlab/deepa/repenrich2_subset/siTIP60_H3_steph_multimap_R1.fastq \
--fastqfile2 /root/sjlab/deepa/repenrich2_subset/siTIP60_H3_steph_multimap_R2.fastq \
/root/sjlab/deepa/repenrich2_subset/siTIP60_H3_steph_unique.bam --cpus 16 --pairedend TRUE

####################################################################################################
