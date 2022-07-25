export RELEASE="2.2.1"
useradd --no-create-home --shell /bin/false prometheus
useradd --no-create-home --shell /bin/false node_exporter
mkdir /etc/prometheus
mkdir /var/lib/prometheus
chown prometheus:prometheus /etc/prometheus
chown prometheus:prometheus /var/lib/prometheus
cd /opt/
wget https://github.com/prometheus/prometheus/releases/download/v2.37.0/prometheus-2.37.0.linux-amd64.tar.gz
sha256sum prometheus-2.37.0.linux-amd64.tar.gz
tar xvzf prometheus-2.37.0.linux-amd64.tar.gz
cp /opt/prometheus-2.37.0.linux-amd64/prometheus /usr/local/bin/
cp /opt/prometheus-2.37.0.linux-amd64/promtool /usr/local/bin/
cp -r /opt/prometheus-2.37.0.linux-amd64/consoles /etc/prometheus
cp -r /opt/prometheus-2.37.0.linux-amd64/console_libraries /etc/prometheus
cp -r configs/etc/prometheus/prometheus.yml /etc/prometheus
chown -R prometheus:prometheus /etc/prometheus/consoles
chown -R prometheus:prometheus /etc/prometheus/console_libraries
chown -R prometheus:prometheus /etc/prometheus/prometheus.yml
cp configs/systemd/system/prometheus.service /etc/systemd/system/
systemctl daemon-reload
systemctl start prometheus
systemctl enable prometheus
systemctl status prometheus
wget -q -O - https://packages.grafana.com/gpg.key | apt-key add -
echo "deb https://packages.grafana.com/enterprise/deb stable main" | tee -a /etc/apt/sources.list.d/grafana.list
apt update
apt install grafana-enterprise
udo /bin/systemctl daemon-reload
/bin/systemctl enable grafana-server
/bin/systemctl start grafana-server
