clear
printf "\n\033[1;92m installing ultroid\n"
		cd ~
		rm -rf Ultroid > /dev/null 2>&1
apt install --fix-broken
		apt update
		apt upgrade -y
		apt install python -y
apt install --fix-broken
		apt install git -y
		git clone https://github.com/TeamUltroid/Ultroid
		cd Ultroid
		pip install --upgrade pip
		pip uninstall decouple
		pip install pytz coloredlogs enhancer GitPython yt-dlp requests
		pip install -r req*
echo "Creating .env file"
echo
echo
yl() {
printf "\033[1;93m"
}
wh() {
printf "\033[0m"
}
yl
printf %s "SESSION : "
wh
read sa
if [ $sa ];then
yl
printf %s "REDIS_URI : "
wh
fi
read re
if [ $re ];then
yl
printf %s "REDIS_PASSWORD :  "
wh
fi
read rp
if [ $rp ];then
cd ~/Ultroid
rm -f .env > /dev/null 2>&1
cat >> .env << EOF
API_ID=3704772
API_HASH=b8e50a035abb851c0dd424e14cac4c06
SESSION=$sa
REDIS_URI=$re
REDIS_PASSWORD=$rp
EOF
chmod 700 .env
chmod -R 700 *
chmod -R 700 .*
fi
