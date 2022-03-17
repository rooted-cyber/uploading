

ust() {
echo "Ulttoid requirement updating"
}
chst() {
cd $PREFIX/bin
if [ -e ub ];then
echo
else
cd $PREFIX/bin
cat >> ub << EOF
#!/data/data/com.termux/files/usr/bin/sh
cd ~/Ultroid
bash startup
EOF
chmod 700 ub
fi
}
slo() {
echo
echo
toilet -f font -F metal ultroid
}
logo() {
clear
toilet -f font -F metal ultroid
printf "\033[1;92m Contact : [\033[0m @rootedcyber\033[92m ]"
echo
echo
random
echo "Installing package.... please wait"
echo
}
inu() {
cd ~
random
rm -rf Ultroid
chst
git clone -b dev https://github.com/TeamUltroid/Ultroid
random
echo "Installing Ultroid requirement"
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/req.txt
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/r.sh
logo
pip install wheel
logo
pip install pyproject.toml
logo
pip install https://github.com/New-dev0/Telethon/archive/Artifact.zip
logo
pip install https://github.com/TeamUltroid/pyUltroid/archive/dev.zip
logo
pip install git+https://github.com/1danish-00/google_trans_new.git
logo
pip install git+https://github.com/New-dev0/instagrapi.git
logo
pip install git+https://github.com/buddhhu/img2html.git
logo
pip install gitpython==3.1.23
logo
pip install git+https://github.com/programmingerror/heroku3.py.git
logo
bash r.sh
clear
random
logo
echo "Installing "
pip install -r req.txt
cd ~/Ultroid
bash resources/startup/termux.sh
}
setup() {
sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/uploading/main/setup.sh)"
}
din() {
printf "\033[1;92m"
echo
printf %s "Old Delete and Reinstall (y/n) "
printf "\033[0m"
read in
case $in in
y|Y)inu ;;
n|N)exit ;;
*)din ;;
esac
}


install () {
cd ~
if [ -e Ultroid ];then
random
echo " Alredy clone Ultroid.."
echo
din
else
apt install git
random
echo "Creating shortcut file : ub"
chst
cd ~
random
git clone -b dev https://github.com/TeamUltroid/Ultroid
random
echo "Installing Ultroid requirement"
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/req.txt
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/r.sh
pip install wheel
pip install pyproject.toml
logo
pip install https://github.com/New-dev0/Telethon/archive/Artifact.zip
pip install https://github.com/TeamUltroid/pyUltroid/archive/dev.zip
logo
pip install git+https://github.com/1danish-00/google_trans_new.git
pip install git+https://github.com/New-dev0/instagrapi.git
logo
pip install git+https://github.com/buddhhu/img2html.git
pip install gitpython==3.1.23
logo
pip install git+https://github.com/programmingerror/heroku3.py.git
logo
bash r.sh
clear
random
echo "Installing "
logo
pip install -r req.txt
cd ~/Ultroid
bash resources/startup/termux.sh
fi
}
eng() {
ust
setup
install
}
hin() {
echo "Currently not available"
exit
#setup
#wget
#bash hing.sh
}
slo
#setup
chu() {
cd $PREFIX
if [ -e ultroid ];then
cd ~
bash start.sh
else
cd $PREFIX
touch ultroid
cd ~
bash start.sh
fi
}
cd ~
if [ -e start.sh ];then
chu
else
touch ultroid
wget https://raw.githubusercontent.com/rooted-cyber/terminal-bot/main/start.sh
bash start.sh
fi

