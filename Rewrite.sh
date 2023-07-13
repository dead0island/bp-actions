root_password="qetuowryip"
echo -e "$root_password\n$root_password" | sudo passwd root
sudo apt install expect -y
echo 'set password "qetuowryip"' >> expect.work
echo 'spawn su' >> expect.work
echo 'expect "Password:"'  >> expect.work
echo 'send "$password\r"'  >> expect.work
echo 'interact' >> expect.work
expect -f expect.work
