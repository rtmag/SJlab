#ls -1 *sort.bam|perl -pe 's/^/samtools index /g'|perl -pe 's/\n/ &\n/g'
samtools index siControl_H3K9me3_novogene_sort.bam &
samtools index siControl_H3K9me3_steph_sort.bam &
samtools index siControl_H3_novogene_sort.bam &
samtools index siControl_H3_steph_sort.bam &
samtools index siTIP60_H3K9me3_novogene_sort.bam &
samtools index siTIP60_H3K9me3_steph_sort.bam &
samtools index siTIP60_H3_novogene_sort.bam &
samtools index siTIP60_H3_steph_sort.bam &

#ls -1 *sort.bam|perl -pe 's/(.+)\_sort\.bam/ bamCoverage \-p max \-bs 1 \-\-normalizeUsing CPM \-b $1\_sort\.bam \-o $1\.bw /g'

 bamCoverage -p max -bs 1 --normalizeUsing CPM -b siControl_H3K9me3_novogene_sort.bam -o /root/sjlab/deepa_repenrich1/bw/siControl_H3K9me3_novogene.bw 
 bamCoverage -p max -bs 1 --normalizeUsing CPM -b siControl_H3K9me3_steph_sort.bam -o /root/sjlab/deepa_repenrich1/bw/siControl_H3K9me3_steph.bw 
 bamCoverage -p max -bs 1 --normalizeUsing CPM -b siControl_H3_novogene_sort.bam -o /root/sjlab/deepa_repenrich1/bw/siControl_H3_novogene.bw 
 bamCoverage -p max -bs 1 --normalizeUsing CPM -b siControl_H3_steph_sort.bam -o /root/sjlab/deepa_repenrich1/bw/siControl_H3_steph.bw 
 bamCoverage -p max -bs 1 --normalizeUsing CPM -b siTIP60_H3K9me3_novogene_sort.bam -o /root/sjlab/deepa_repenrich1/bw/siTIP60_H3K9me3_novogene.bw 
 bamCoverage -p max -bs 1 --normalizeUsing CPM -b siTIP60_H3K9me3_steph_sort.bam -o /root/sjlab/deepa_repenrich1/bw/siTIP60_H3K9me3_steph.bw 
 bamCoverage -p max -bs 1 --normalizeUsing CPM -b siTIP60_H3_novogene_sort.bam -o /root/sjlab/deepa_repenrich1/bw/siTIP60_H3_novogene.bw 
 bamCoverage -p max -bs 1 --normalizeUsing CPM -b siTIP60_H3_steph_sort.bam -o /root/sjlab/deepa_repenrich1/bw/siTIP60_H3_steph.bw 
 
 ###################################
 
 multiBigwigSummary bins -b siControl_H3K9me3_novogene.bw siControl_H3K9me3_steph.bw siControl_H3_novogene.bw siControl_H3_steph.bw \
siTIP60_H3K9me3_novogene.bw siTIP60_H3K9me3_steph.bw siTIP60_H3_novogene.bw siTIP60_H3_steph.bw -p max -bs 200 -o multiBigwig.npz

plotPCA --corData multiBigwig.npz -o multiBigwig_pca.pdf
plotCorrelation --whatToPlot heatmap --corData multiBigwig.npz -c spearman -o multiBigwig_plotcorrelation.pdf
plotCorrelation --whatToPlot scatterplot --corData multiBigwig.npz -c spearman -o multiBigwig_plotcorrelation_scatter.pdf

