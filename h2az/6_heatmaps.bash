computeMatrix reference-point \
-S \
/home/roberto/h2az/bw/h2az_siControl_rmdup.smooth.qnor.bw \
/home/roberto/h2az/bw/h2az_siTIP60_rmdup.smooth.qnor.bw \
-R /home/roberto/references/hg38_tss.bed --referencePoint center \
--sortRegions descend -bs 20 -a 2000 -b 2000 -p max -out /home/roberto/h2az/heatmap/h2az_danpos.mat
#
plotHeatmap --xAxisLabel "" --yAxisLabel "" --refPointLabel "TSS" --colorMap Blues \
-m /home/roberto/h2az/heatmap/h2az_danpos.mat --regionsLabel "genes" \
 --samplesLabel "siControl" "siTIP60"  \
-out /home/roberto/h2az/heatmap/h2az_danpos.pdf
