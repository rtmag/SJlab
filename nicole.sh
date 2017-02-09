# Motif discovery

# TSS 2kb upstream
more hg19_canonical_TSS_2.bed |cut -f 1,2,3,5,6|grep -v "#"| \
awk -F  "\t" \
'{if($4=="+"){print $1"\t"$2-2000"\t"$2"\t"$5"\t"1000"\t"$4} if($4=="-"){print $1"\t"$3"\t"$3+2000"\t"$5"\t"1000"\t"$4} }' \
> hg19_tss_2kb.bed

