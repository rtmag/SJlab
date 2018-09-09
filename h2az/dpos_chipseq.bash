python /home/rtm/myprograms/danpos-2.2.2/danpos.py dpos -o siControl h2az_siControl_rmdup.bam:input_siControl_rmdup.bam &> siControl.log
python /home/rtm/myprograms/danpos-2.2.2/danpos.py dpos -o siTIP60 h2az_siTIP60_rmdup.bam:input_siTIP60_rmdup.bam &> siTIP60.log

python /home/rtm/myprograms/danpos-2.2.2/danpos.py wiq --buffer_size 70 hg38.chrom.sizes_noCHR NTC.smooth.wig:siMyc.smooth.wig &> norm.log
