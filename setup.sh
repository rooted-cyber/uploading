a() {
printf "\n\033[1;92m Updating package..\n\n"
apt install --fix-broken
apt update
apt upgrade
apt-get update
apt-get upgrade
apt install --fix-broken
}
abb() {
a
for ab in wget figlet toilet python git;do
cd $PREFIX/bin
if [ -e $ab ];then
printf "\n\n\033[1;93m Already installed $ab\n\n"
else
apt install --fix-broken
printf "\n\n Installing $ab\n\n"
apt install $ab || apt reinstall $ab
apt install --fix-broken
fi
}
dei() {
abb
cd $PREFIX/bin
if [ -e random ];then
printf "\n\n\033[1;93m Already installed random\n\n"
else
printf "\n\n Installing random\n\n"
wget https://github.com/rooted-cyber/compresses-app/raw/main/files/Random.deb
dpkg -i Random.deb
fi
cd $PREFIX/share/figlet
if [ -e font.flf ];then
printf "\n\n\033[1;93m Already installed font file\n\n"
else
printf "\n\n Installing font\n\n"
wget https://github.com/rooted-cyber/compresses-app/raw/main/files/Font.deb
dpkg -i Font.deb
fi
}
dei