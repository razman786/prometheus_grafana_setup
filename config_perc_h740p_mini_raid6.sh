# install PERC storage utility
dpkg -i configs/perccli_007.1623.0000.0000_all.deb
# setup writeback to forced
/opt/MegaRAID/perccli/perccli64 /c0/v0 set wrcache=FWB
# set no read ahead
/opt/MegaRAID/perccli/perccli64 /c0/v0 set rdcache=NoRA
# set RQ affinity for block devices
for blk in $(ls /sys/block/); do echo 2 > /sys/block/$blk/queue/rq_affinity; done

# for example:
# echo 2 > /sys/block/sda/queue/rq_affinity
# echo 2 > /sys/block/dm-0/queue/rq_affinity
# echo 2 > /sys/block/dm-1/queue/rq_affinity
# echo 2 > /sys/block/dm-2/queue/rq_affinity
# echo 2 > /sys/block/loop0/queue/rq_affinity
# echo 2 > /sys/block/loop1/queue/rq_affinity
# echo 2 > /sys/block/loop2/queue/rq_affinity
# echo 2 > /sys/block/loop3/queue/rq_affinity
# echo 2 > /sys/block/loop4/queue/rq_affinity
# echo 2 > /sys/block/loop5/queue/rq_affinity
# echo 2 > /sys/block/loop6/queue/rq_affinity
# echo 2 > /sys/block/loop7/queue/rq_affinity
# echo 2 > /sys/block/loop8/queue/rq_affinity

