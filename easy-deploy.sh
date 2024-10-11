echo
echo Starting install...
echo
sudo mkdir /netos
cd /netos
sudo git clone https://github.com/netos-networks/netos-netops
cd netos-netops
sudo chmod +x deploy.sh
clear
sudo ./deploy.sh