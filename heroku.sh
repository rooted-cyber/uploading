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
apt install nodejs
apt install --fix-broken
}
app
chh
