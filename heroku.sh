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
apt autoremove nodejs
apt update
apt upgrade
apt install --fix-broken
apt install nodejs || apt reinstall nodejs
}
hs
if [ "$(node --version)" == "v17.4.0" ];then
echo
else
hs
fi
inh() {
app
printf "\n Installing heroku\n\n"
npm install -g heroku
if [ "$(heroku --version)" == "heroku/7.59.2 android-arm64 node-v17.4.0" ];then
printf "\n Login heroku\n"
heroku login -i
else
cd $PREFIX
cd bin
rm -f heroku > /dev/null 2>&1
cd ..
cd lib/node*
rm -rf heroku > /dev/null 2>&1
printf "\n Downloading heroku.deb\n"
wget https://github.com/rooted-cyber/uploading/raw/main/heroku.deb
printf "\n Installing heroku\n\n"
dpkg -i heroku.deb
printf "\n Login heroku\n"
heroku login -i
fi
}
inh
if [ "$(heroku --version)" == "heroku/7.59.2 android-arm64 node-v17.4.0" ];then
echo
else
inh
fi
hr() {
if [ "$(heroku --version)" == "heroku/7.59.2 android-arm64 node-v17.4.0" ];then
printf "\n Login heroku\n"
heroku login -i
else
inh
fi
}
if [ "$(node --version)" == "v17.4.0" ];then
hr
else
hs
fi