chh() {
if [ -e heroku.deb ];then
dpkg -i heroku.deb
else
printf "\n Downloading heroku.deb\n"
wget https://github.com/rooted-cyber/uploading/raw/main/heroku.deb
printf "\n Installing heroku\n\n"
dpkg -i heroku.deb
fi
}
app() {
printf "\n\033[1;92m updating package\n"
apt install --fix-broken
apt update
apt upgrade
apt-get update
apt-get upgrade
apt install --fix-broken
}
hs() {
echo "removing nodejs"
apt autoremove nodejs
apt update
apt upgrade
apt install --fix-broken
echo "installing nodejs"
apt install nodejs || apt reinstall nodejs
}
printf "\n\033[1;92m checking nodejs "
if [ "$(node --version)" == "v17.4.0" ];then
printf "[\033[1;93m Installed nodejs\033[92m ]"
else
hs
fi
inh() {
app
printf "\n\033[1;92m checking heroku "
#npm install -g heroku
if [ "$(heroku --version)" == "heroku/7.59.2 android-arm64 node-v17.4.0" ];then
printf "[\033[1;93m Installed heroku\033[92m ]"
else
cd $PREFIX
cd bin
rm -f heroku > /dev/null 2>&1
cd ..
cd lib/node*
rm -rf heroku > /dev/null 2>&1
cd ~
chh
fi
}
printf "\n\033[1;92m checking heroku "
if [ "$(heroku --version)" == "heroku/7.59.2 android-arm64 node-v17.4.0" ];then
printf "[\033[1;93m Installed heroku\033[92m ]"
else
inh
fi
hr() {
printf "\n\033[1;92m checking heroku "
if [ "$(heroku --version)" == "heroku/7.59.2 android-arm64 node-v17.4.0" ];then
printf "[\033[1;93m Installed heroku\033[92m ]\n\n"
else
inh
fi
}
printf "\n\033[1;92m checking nodejs "
if [ "$(node --version)" == "v17.4.0" ];then
printf "[\033[1;93m Installed nodejs\033[92m ]"
hr
else
echo "not installed"
hs
fi