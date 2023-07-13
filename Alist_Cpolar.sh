whoami
echo "安装Alist中......"
wget https://alist.nn.ci/v3.sh
sudo chmod 777 ./v3.sh
./v3.sh install
sed -i 's#5244#8080#g' /opt/alist/data/config.json
systemctl enable alist
systemctl start alist
echo "Alist安装成功！"
echo "..............................................................."
echo "安装cpolar......"
wget https://www.cpolar.com/static/downloads/install-release-cpolar.sh
sudo chmod 777 ./install-release-cpolar.sh
./install-release-cpolar.sh
cpolar version
cpolar authtoken ZjFmOWQ4OTMtMDljMS00MTY4LTg3MWEtNDk2OTQ5ZTQyMDJm
sudo systemctl enable cpolar
sudo systemctl start cpolar
echo "cpolar安装成功！"
