sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/uploading/main/setup.sh)"
cd ~
if [ -e Ultroid ];then
random
echo " Alredy clone Ultroid.."
random
echo "Now.. try to start ultroid"
sleep 0.50
cd Ultroid
bash startup
exit
else
apt install git
random
git clone -b dev https://github.com/TeamUltroid/Ultroid
random
echo "Installing Ultroid requirement"
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/req.txt
pip install wheel
pip install pyproject.toml
pip install https://github.com/New-dev0/Telethon/archive/Artifact.zip
pip install https://github.com/TeamUltroid/pyUltroid/archive/dev.zip
pip install git+https://github.com/1danish-00/google_trans_new.git
pip install git+https://github.com/New-dev0/instagrapi.git
pip install git+https://github.com/buddhhu/img2html.git
pip install gitpython==3.1.23
pip install git+https://github.com/programmingerror/heroku3.py.git
pip install -r req.txt
cd ~/Ultroid
bash resources/startup/termux.sh
fi

