export OMP_NUM_THREADS=`lscpu | grep -w '^CPU(s):'|awk '{print $2}'`
export KMP_AFFINITY=compact
# use if HT enabled
# export KMP_AFFINITY=granularity=fine,compact,1,0
./stream_c.exe
./stream_f.exe
