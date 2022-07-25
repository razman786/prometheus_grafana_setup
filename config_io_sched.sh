cp configs/etc/modprobe.d/bfq.conf /etc/modprobe.d/
cp configs/etc/rc.local /etc/
modprobe bfq
echo 'bfq' > /sys/block/sda/queue/scheduler
