hs() {
cd $PREFIX/bin
apt autoremove nodejs
apt update
apt upgrade
apt install --fix-broken
apt install nodejs || apt reinstall nodejs
npm install -g heroku
heroku login -i
}
hs