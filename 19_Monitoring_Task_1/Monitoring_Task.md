#########################################################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GUVI Assignment 19_Monitoring_Task-1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#########################################################################################################################

### Monitoring_Task -1
	- https://docs.google.com/document/d/13wdBq68_2vQesNo5-IuSfltsCpnV3DNVO39vUlctaM0/edit?usp=sharing

#### Techstacks needs to be used : 
   - AWS EBS
   - AWS EC2

#### How do I submit my work?
   - Push all your work files to GitHub (O/P screenshot images must).
   - Submit your URLs in the portal.

#### Terms and Conditions?
   - You agree to not share this confidential document with anyone. 
   - You agree to open-source your code (it may even look good on your profile!). Do not mention our company’s name anywhere in the code.
   - We will never use your source code under any circumstances for any commercial purposes; this is just a basic assessment task. 

   - NOTE: Any violation of Terms and conditions is strictly prohibited. You are bound to adhere to it.

#### Task Description:
   - 01_Q. Install Prometheus and Grafana on a Linux EC2 machine, connect Prometheus to Grafana, and create a dashboard to view metrics.
   

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Activity GUVI Assignment 19_Monitoring_Task-1  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To setting it up Monitoring Task on  amazone linux 2023, create projects Install Prometheus and Grafana on a Linux EC2 machine, 
connect Prometheus to Grafana, and create a dashboard to view metrics. Afterward, push the project files to a GitHub repository.

Follow these following steps to deploy & configure promethius and Grafana on amazone linux 2023

Step 1: Launch EC2 Instance
Use Amazon Linux 2023 AMI (stable and supported).

Choose instance type: t2.micro (for testing) or larger for production.

Open inbound ports in the Security Group:

9090 → Prometheus

9100 → Node Exporter (if you plan to use it)

22 → SSH

Step 2: Update System
sudo yum update -y

Step 3: Install Prometheus and create prometheus user account 
sudo useradd --no-create-home --shell /bin/false prometheus

Download Prometheus:
wget https://github.com/prometheus/prometheus/releases/download/v2.54.1/prometheus-2.54.1.linux-amd64.tar.gz
tar -xvf prometheus-*.tar.gz
cd prometheus-2.54.1.linux-amd64

Move binaries:
sudo mv prometheus /usr/local/bin/
sudo mv promtool /usr/local/bin/

Create directories:
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus
sudo chown prometheus:prometheus /var/lib/prometheus

Copy config and consoles:
sudo cp -r consoles /etc/prometheus
sudo cp -r console_libraries /etc/prometheus
sudo cp prometheus.yml /etc/prometheus/prometheus.yml
sudo chown -R prometheus:prometheus /etc/prometheus

Step 4: Configure Prometheus
cat /etc/prometheus/prometheus.yml
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: "prometheus"
    static_configs:
      - targets: ["localhost:9090"]

  - job_name: "node"
    static_configs:
      - targets: ["localhost:9100"]

# promtool check config /etc/prometheus/prometheus.yml
Checking /etc/prometheus/prometheus.yml
 SUCCESS: /etc/prometheus/prometheus.yml is valid prometheus config file syntax

Step 5: Create Systemd Service:
cat /etc/systemd/system/prometheus.service
[Unit]
Description=Prometheus Monitoring
Wants=network-online.target
After=network-online.target

[Service]
User=prometheus
Group=prometheus
Type=simple
ExecStart=/usr/local/bin/prometheus \
  --config.file=/etc/prometheus/prometheus.yml \
  --storage.tsdb.path=/var/lib/prometheus/ \
  --web.console.templates=/etc/prometheus/consoles \
  --web.console.libraries=/etc/prometheus/console_libraries

[Install]
WantedBy=multi-user.target

Step 6: Start Prometheus:
sudo systemctl daemon-reload
sudo systemctl start prometheus
sudo systemctl enable prometheus

Access Prometheus at:
curl http://54.210.155.240:9090
<a href="/graph">Found</a>.


Step 7: (Optional) Install Node Exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.8.1/node_exporter-1.8.1.linux-amd64.tar.gz
tar -xvf node_exporter-*.tar.gz
cd node_exporter-*

./node_exporter &

Metrics available at:
curl http://54.210.155.240:9100/metrics

At this point, Prometheus is running as a service on Amazon Linux, scraping itself and Node Exporter.

Grafana installed and connected to Prometheus on your Amazon Linux 2023 

Step 1: Update System
sudo dnf update -y

Step 2: Add Grafana’s official Repository
sudo tee /etc/yum.repos.d/grafana.repo<<EOF
[grafana]
name=Grafana OSS
baseurl=https://packages.grafana.com/oss/rpm
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://packages.grafana.com/gpg.key
EOF

Step 3: Install Grafana:
sudo dnf install grafana -y

Step 4: Start and Enable Grafana
sudo systemctl start grafana-server
sudo systemctl enable grafana-server


Grafana runs on port 3000. Default login: admin / admin.

Step 5: Connect Grafana to Prometheus
Open Grafana in browser:
curl http://54.83.100.13:3000

Log in → go to Configuration → Data Sources → Add Data Source.

Select Prometheus and set:

URL: http://54.83.100.13:3000

Click Save & Test → should connect successfully.

Step 6: Import a Dashboard
Go to Dashboards → New → Import.

Use Dashboard ID: 1860 (Node Exporter Full Dashboard).

This gives you CPU, memory, disk, and network metrics instantly.


md_rustam@DESKTOP-CPK0PUB:~/Project$ git add .; git commit -m "18_Terraform_Task_2"; git push origin main
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 875 bytes | 291.00 KiB/s, done.
Total 4 (delta 3), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/StarGithMd/Guvi_DevOps.git
   834eb4f..421d9fa  main -> main
