sudo add-apt-repository ppa:tuxinvader/lts-mainline -y
# minor verion will change often like .10 or .12 etc
sudo apt-get install linux-generic-5.18 -y
apt install linux-tools-generic linux-tools-common-5.18.10
apt install linux-buildinfo-5.18.10-051810-generic linux-doc linux-libc-dev linux-source-5.18.10
sed 's/GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="mitigations=off numa_balancing=disable amd_cpufreq=enable amd_cpufreq.cppc_enable=1 panic=5"/g' /etc/default/grub
update-grub2
reboot
cd /usr/src/
tar xvjf linux-source-5.18.10.tar.bz2 
cd linux-source-5.18.10
make -C tools/ perf_install prefix=/usr/
apt install libpci-dev
cd tools/power/cpupower/
cp libcpupower.so* /usr/lib/
cd ../x86/
cd x86_energy_perf_policy/
apt-get install libcap-dev
make install prefix=/usr/
cd ../../acpi
apt install uuid-dev
make install prefix=/usr/
