random
echo "Downloading Requirements.."
cd ~
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/install.sh
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/pickle.py
bash install.sh
random
echo "Generating token.pickle...."
echo "...."
cd ~
if [ -e "credentials.json" ];then
random
echo "open this link"
echo
python pickle.py
else
echo "\033[1;91m Copy credentials.json file in  ~ "
echo
exit
fi
