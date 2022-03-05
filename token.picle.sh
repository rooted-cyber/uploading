random
echo "Downloading Requirements.."
cd ~
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/install.sh
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/picle.py
bash install.sh
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
