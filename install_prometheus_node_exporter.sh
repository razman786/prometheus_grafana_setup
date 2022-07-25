useradd --no-create-home --shell /bin/false node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
tar xvzf node_exporter-1.3.1.linux-amd64.tar.gz
cp node_exporter-1.3.1.linux-amd64/node_exporter /usr/local/bin
cp configs/lib/systemd/system/node_exporter.service /lib/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable node_exporter
sudo systemctl start node_exporter
