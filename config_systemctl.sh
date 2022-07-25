systemctl disable phpsessionclean
systemctl stop phpsessionclean
systemctl disable phpsessionclean.timer
systemctl stop phpsessionclean.timer
systemctl stop nfs-server
systemctl disable nfs-server
systemctl stop autofs
systemctl disable autofs
systemctl disable snapd
systemctl stop snapd
systemctl disable snapd.socket
systemctl stop snapd.socket
apt purge snapd -y
systemctl stop dev-mqueue.mount
systemctl disable dev-mqueue.mount
systemctl stop sys-fs-fuse-connections.mount
systemctl disable sys-fs-fuse-connections.mount
apt purge fuse -y
