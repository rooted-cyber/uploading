#!/bin/bash
ptp() {
sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/Termux-files/main/fix.sh)"
}
sth() {
sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/Zsh-files/main/theme.sh)"
}
a() {
printf "\n\033[1;92m Updating package..\n\n"
apt install --fix-broken
apt update
apt update -y
apt upgrade
apt upgrade -y
pkg update
pkg upgrade
apt-get update -y
apt-get upgrade -y
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
apt install $ab -y || apt reinstall $ab -y
pkg install $ab
pkg install --fix-broken
apt install --fix-broken
fi
pip install --upgrade pip
sudo pip install --upgrade pip

done
sth
}
dei() {
abb
cd $PREFIX/bin
if [ -e git ];then
echo
else
ptp
a
abb
fi
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
chh() {
printf "\033[1;92m"
printf %s "Setup ? (y|n) "
printf "\033[0m"
read ab
case $ab in
y|Y)dei ;;
n|N)sth ;;
*)chh ;;
esac
}
che () {
cd $PREFIX/bin
if [ -e random ];then
chh
else
dei
fi
}
che
