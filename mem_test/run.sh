cpu_num=`lscpu | grep -w '^CPU(s):'|awk '{print $2}'`
export OMP_NUM_THREADS=$cpu_num
# optionally set OMP affinity
# ((max_aff=$cpu_num-1))
# export GOMP_CPU_AFFINITY=0-$max_aff
export KMP_AFFINITY=compact
# use if HT enabled
# export KMP_AFFINITY=granularity=fine,compact,1,0
./stream_c.exe
./stream_f.exe
