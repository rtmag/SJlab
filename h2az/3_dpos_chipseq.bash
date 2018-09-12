python /home/rtm/myprograms/danpos-2.2.2/danpos.py dpos -o siControl -n N h2az_siControl_rmdup.bam &> siControl.log &
python /home/rtm/myprograms/danpos-2.2.2/danpos.py dpos -o siTIP60 -n N h2az_siTIP60_rmdup.bam &> siTIP60.log &

python /home/rtm/myprograms/danpos-2.2.2/danpos.py wiq --buffer_size 70 /home/rtm/references/hg38.chrom.sizes \
/home/rtm/CSI/sjlab/h2az/siControl/pooled/h2az_siControl_rmdup.smooth.wig:/home/rtm/CSI/sjlab/h2az/siTIP60/pooled/h2az_siTIP60_rmdup.smooth.wig &> norm.log
