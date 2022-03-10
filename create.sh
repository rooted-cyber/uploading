random
echo "Creating .env file"
echo
echo
yl() {
printf "\033[1;93m"
}
wh() {
printf "\033[0m"
}
#echo -e "\033[1;92m Creating .env "
#echo -e -n "APP_ID : \033[0m"
#read ai
#if [ $ai ];then
#echo -e -n "\033[1;93mAPI_HASH : \033[0m "
#fi
#read ha
#if [ $ha ];then
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
printf %s "BOT_TOKEN : "
wh
fi
read bt
if [ $bt ];then
cd ~/Ultroid
rm -f .env > /dev/null 2>&1
cat >> .env << EOF
API_ID=3704772
API_HASH=b8e50a035abb851c0dd424e14cac4c06
SESSION=$sa
REDIS_URI=$re
REDIS_PASSWORD=$rp
BOT_TOKEN=$bt
EOF
chmod 700 .env
fi

