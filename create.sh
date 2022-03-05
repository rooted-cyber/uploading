echo -e "\033[1;92m Creating .env "
#echo -e -n "APP_ID : \033[0m"
#read ai
#if [ $ai ];then
#echo -e -n "\033[1;93mAPI_HASH : \033[0m "
#fi
#read ha
#if [ $ha ];then
echo -e -n "\033[1;93mSESSION : \033[0m "
read sa
if [ $sa ];then
echo -e -n "\033[1;93mREDIS_URI : \033[0m "
fi
read re
if [ $re ];then
echo -e -n "\033[1;93mREDIS_PASSWORD : \033[0m "
fi
read rp
if [ $rp ];then
echo -e -n "\033[1;93mBOT_TOKEN : \033[0m "
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
LOG_CHANNEL=-100722692047
BOT_TOKEN=$bt
EOF
chmod 700 .env
fi

