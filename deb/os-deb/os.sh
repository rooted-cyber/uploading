aps() {
cat >> apd << EOF
apk d *apk -o decompile
EOF
cat >> apb << EOF
apk b  decompile -o recompile
EOF
cat >> ape << EOF
apt install zip > /dev/null 2>&1
zip -9 -r apk.zip decompile
EOF
cp ap* /bin
chmod 755 /bin/ap*
}
sth() {
cd ~
wget https://github.com/rooted-cyber/zsh-themes/raw/main/theme.sh
bash them*
}
a() {
printf "\n\033[1;92m Updating package..\n\n"
apt install --fix-broken
apt update
apt update -y
apt upgrade -y
apt-get update -y
apt-get upgrade -y
apt install --fix-broken
}
abb() {
a
for ab in python3.11-venv curl wget sudo apktool screen python3 python3-pip figlet toilet git;do
cd /bin
if [ -e $ab ];then
printf "\n\n\033[1;93m Already installed $ab\n\n"
else
apt install --fix-broken
printf "\n\n Installing $ab\n\n\033[1;93m"
apt install $ab -y || apt reinstall $ab -y
apt install --fix-broken
python3 -m venv .venv
fi
done
}
abb
printf "\n instaling apktool\n"
wget -O /bin/apk https://github.com/rooted-cyber/uploading/raw/main/apktool/apk
if [ -e /bin/apktool.jar ];then
echo
else
cd /bin
wget https://github.com/rooted-cyber/uploading/raw/main/apktool/apktool.jar
chmod 755 /bin/apk*
aps
fi
sth
sho() {
if [ -e ~/deb ];then
wget https://github.com/rooted-cyber/uploading/raw/main/deb/Font_Random.deb
dpkg -i *deb
else
mkdir ~/deb
mkdir /sdcard/deb
mkdir /sdcard/extract
mkdir /sdcard/create
wget https://github.com/rooted-cyber/uploading/raw/main/deb/Font_Random.deb
dpkg -i *deb
fi
}
sho
