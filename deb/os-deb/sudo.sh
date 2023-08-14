aps() {
cat >> apd << EOF
apk d *apk -o decompile
EOF
cat >> apb << EOF
apk b  decompile -o recompile
EOF
cat >> ape << EOF
sudo apt install zip -y > /dev/null 2>&1
zip -9 -r apk.zip decompile
EOF
sudo cp ap* /bin
sudo chmod 755 /bin/ap*
cat >> help << EOF
printf "\n ape -- for zip
apd -- for declmpile
apb -- for reclompile"
EOF
sudo cp help /bin
sudo chmod 755 /bin/help
}
fix() {
sudo apt list --upgradable
sudo apt install --fix-broken -y
}
a() {
echo "Updating package..\n\n"
sudo apt update -y
sudo apt upgrade -y
sudo apt-get update -y
sudo apt-get upgrade -y
fix
}
abb() {
a
for ab in curl wget sudo apktool screen python3 python3-pip figlet toilet git;do
cd /bin
if [ -e $ab ];then
echo "Already installed $ab\n\n"
else
sudo apt install --fix-broken
printf "\n\n Installing $ab\n\n\033[1;93m"
sudo apt install $ab -y || sudo apt reinstall $ab -y
fix
sudo apt install --fix-broken
fi
done
}
abb
printf "\n instaling apktool\n"
cd /bin
sudo wget https://github.com/rooted-cyber/uploading/raw/main/apktool/apk
if [ -e /bin/apktool.jar ];then
echo
else
cd /bin
sudo wget https://github.com/rooted-cyber/uploading/raw/main/apktool/apktool.jar
sudo chmod 755 /bin/apk*
fi
