echo -e qetuowryip\nqetuowryip | sudo passwd root
sudo apt install expect
echo 'set password "qetuowryip"' >> expect.work
echo 'spawn su' >> expect.work
echo 'expect "Password:"'  >> expect.work
echo 'send "$password\r"'  >> expect.work
echo 'interact' >> expect.work
expect -f expect.work
echo "安装Alist中......"
wget https://alist.nn.ci/v3.sh
./v3.sh install
sed -i 's#80#8080#g' /opt/alist/data/config.json
systemctl enable alist
systemctl start alist
echo "Alist安装成功！"
echo "..............................................................."
echo "安装cpolar......"
curl -L https://www.cpolar.com/static/downloads/install-release-cpolar.sh | sudo bash
cpolar version
cpolar authtoken ZjFmOWQ4OTMtMDljMS00MTY4LTg3MWEtNDk2OTQ5ZTQyMDJm
sudo systemctl enable cpolar
sudo systemctl start cpolar
echo "cpolar安装成功！"
      
