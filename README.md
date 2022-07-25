# prometheus_grafana_setup
Personal setup scripts and config for prometheus, grafana and kernel tweaks for AMD EPYC's.

## Short descriptions

`config_swap.sh` sets the swappiness to 1%. Therefore, swap will not be used until free memory is 1% or lower.

`config_systemctl.sh` disables and removes a number of unwanted services.

`install_tools.sh` installs a number of useful tools including `numactl` and `ipmiutils`.

`install_prometheus_node_exporter.sh` installs the node_exporter prometheus service for end-points that wish to be monitored.

`install_prometheus_grafana.sh` installs the prometheus and grafana servers.

`install_kernel.sh` installs the latest mainline kernel (via PPA) and installs
some kernel tooling.

`configs` directory contains a number of configuration files.

`config_io_sched.sh` can be used to switch the I/O scheduler to BFQ.
