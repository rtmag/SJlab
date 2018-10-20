python /home/rtm/myprograms/danpos-2.2.2/danpos.py dpos -o siControl -n N h2az_siControl_rmdup.bam &> siControl.log &
python /home/rtm/myprograms/danpos-2.2.2/danpos.py dpos -o siTIP60 -n N h2az_siTIP60_rmdup.bam &> siTIP60.log &

python /home/rtm/myprograms/danpos-2.2.2/danpos.py wiq --buffer_size 70 /home/rtm/references/hg38.chrom.sizes \
/home/rtm/CSI/sjlab/h2az/siControl/pooled/h2az_siControl_rmdup.smooth.wig:/home/rtm/CSI/sjlab/h2az/siTIP60/pooled/h2az_siTIP60_rmdup.smooth.wig &> norm.log

/home/rtm/myprograms/kentUtils/bin/linux.x86_64/wigToBigWig home_rtm_CSI_sjlab_h2az_siControl_pooled_h2az_siControl_rmdup.smooth.qnor.wig \
/home/rtm/references/hg38.chrom.sizes h2az_siControl_rmdup.smooth.qnor.bw -clip &

/home/rtm/myprograms/kentUtils/bin/linux.x86_64/wigToBigWig home_rtm_CSI_sjlab_h2az_siTIP60_pooled_h2az_siTIP60_rmdup.smooth.qnor.wig \
/home/rtm/references/hg38.chrom.sizes h2az_siTIP60_rmdup.smooth.qnor.bw -clip &
######
