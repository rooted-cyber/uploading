crc() {
cd /sdcard/Rootedcyber-Token.Pickle
if [ -e "credentials.json" ];then
random
echo "Generating token.pickle...."
echo
echo
random
echo "Checking credentials.json"
echo
echo
random
echo "open this link"
echo
python picle.py
else
sleep 1
echo -e "\033[1;91m Copy credentials.json file in  Rootedcyber-Token.Pickle folder"
echo
random
echo "Copy and Enter"
read a
crc
fi
}
dl() {
cd /sdcard/Rootedcyber-Token.Pickle
if [ -e install.sh ];then
bash install.sh
else
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/install.sh
bash install.sh
fi
if [ -e picle.py ];then
echo
else
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/picle.py
fi
}
sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/uploading/main/setup.sh)"
random
cd /sdcard
if [ -e Rootedcyber-Token.Pickle ];then
echo "Downloading Requirements.."
dl
crc
else
mkdir Rootedcyber-Token.Pickle
echo "Downloading Requirements.."
dl
crc
fi
