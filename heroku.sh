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
fi
}
inh
if [ "$(heroku --version)" == "heroku/7.59.2 android-arm64 node-v17.4.0" ];then
echo
else
inh
fi