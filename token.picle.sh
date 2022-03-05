sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/uploading/main/setup.sh)"
random
echo "Downloading Requirements.."
cd ~
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
random
echo "Generating token.pickle...."
echo
echo
random
echo "Checking credentials.json"
echo
echo
cd ~
if [ -e "credentials.json" ];then
random
echo "open this link"
echo
python pickle.py
else
sleep 1
echo "\033[1;91m Copy credentials.json file in  $HOME"
echo
exit
fi
