#!/bin/bash
wh() {
printf "\033[0m"
}
gc() {
printf "\033[1;92m"
}
allv() {
random
printf "\n 
All require type vars:

BOT_TOKEN :
GDRIVE_FOLDER_ID :
OWNER_ID :
TOKEN_PICKLE_URL : Token.pickle upload and type link
INDEX_URL :

"
gc
printf %s "BOT_TOKEN "
wh
read bot
if [ $bot ];then
gc
printf %s "GDRIVE_FOLDER_ID "
wh
fi
read gd
if [ $gd ];then
gc
printf "OWNER_ID "
wh
fi
read own
if [ $own ];then
gc
printf %s "TOKEN_PICKLE_URL "
wh
fi
read tkp
if [ $tkp ];then
gc
printf %s "INDEX_URL "
wh
fi
read iu
if [ $iu ];then
echo
random
printf "
Your$(wh) BOT_TOKEN : $bot
$(random)Your$(wh) GDRIVE_FOLDER_ID : $gd
$(random)Your$(wh) OWNER_ID : $own
$(random)Your$(wh) TOKEN_PICKLE_URL : $tkp
$(random)Your$(wh) INDEX_URL : $iu
"
cd ~/new*mirror/botm > /dev/null 2>&1
cat >> config.env << EOF
BOT_TOKEN = "$bot"
GDRIVE_FOLDER_ID = "$gd"
OWNER_ID = "$own"
DOWNLOAD_DIR = "/home/username/mirror-bot/downloads"
DOWNLOAD_STATUS_UPDATE_INTERVAL = 5
AUTO_DELETE_MESSAGE_DURATION = 20
IS_TEAM_DRIVE = "False"
TELEGRAM_API = "3704772"
TELEGRAM_HASH = "b8e50a035abb851c0dd424e14cac4c06"
USE_SERVICE_ACCOUNTS = ""

# Optional config
ACCOUNTS_ZIP_URL = "" #Enter Direct Links TO Import Service Accounts Directly From Urls Instead Of Adding Files To Repo.( Archive the accounts folder to a zip file.)
TOKEN_PICKLE_URL = "$tkp" #Enter Direct Links TO Import Credentials Directly From Urls Instead Of Adding Files To Repo.
AUTHORIZED_CHATS = "" #Separated by space
SUDO_USERS = "500774612"  #Separated by space
LOGS_CHATS = ""#Separated by space
DATABASE_URL = ""
IGNORE_PENDING_REQUESTS = ""
INDEX_URL = "$iu"
MEGA_KEY = "vok1Ca6I"
MEGA_USERNAME = "rootedcyber6@gmail.com"
MEGA_PASSWORD = "Maruf123###"
BLOCK_MEGA_LINKS = ""
SHORTENER = ""
SHORTENER_API = ""
STOP_DUPLICATE_CLONE = ""
CLONE_LIMIT = ""
TG_SPLIT_SIZE = "" # leave it empty for max size(2GB)
AS_DOCUMENT = ""
RECURSIVE_SEARCH = "" #T/F And Fill drive_folder File Using Driveid.py Script.
# View Link button to open file Index Link in browser instead of direct download link
# You can figure out if it's compatible with your Index code or not, open any video from you Index and check if its URL ends with ?a=view, if yes make it True it will work (Compatible with Bhadoo Drive Index)
VIEW_LINK = "True"
# Add more buttons (two buttons are already added of file link and index link, you can add extra buttons too, these are optional)
#QBittorrent
BASE_URL_OF_BOT = ""  # Web Link, Required for (Heroku) to avoid sleep or use worker if you don't want to use web (selection)
IS_VPS = ""  # Don't set this to True even if you're using VPS, unless facing error with web server
SERVER_PORT = "80"  # Only For VPS even if IS_VPS is False
WEB_PINCODE = ""
QB_SEED = "" # Seed torrent to specific ratio or specific time, edit vars in qbittorrent config and don't change maxratioaction
# GDTOT COOKIES
PHPSESSID = "osj632m5slu25l4vbtdidprou3"
CRYPT = "L1pnRmxHclF4S2JzMkhHTmV0YXFQNDdtdXM5UlVueDFOT1NxYzVmUzhvUT0%3D"
# If you don't know what are below entries, simply leave them, Don't fill anything in them.
BUTTON_THREE_NAME = "Mirror-Bot install"
BUTTON_THREE_URL = "https://github.com/rooted-cyber/Mirror-Bot-Rootedcyber"
BUTTON_FOUR_NAME = ""
BUTTON_FOUR_URL = ""
BUTTON_FIVE_NAME = ""
BUTTON_FIVE_URL = ""
EOF
fi
if [ -e config.env ];then
random
echo "Successfully Created config.env \n\n Now deploying Your bot\n\n"
fi
sleep 1
chmod -R 700 *
chmod -R 700 .*
bash heroku_push.sh
}
som() {
random
printf "\n Some vars :
BOT_TOKEN :
OWNER_ID :\n\n"
printf "\033[1;92m"
printf %s "BOT_TOKEN "
printf "\033[0m"
read bo
if [ $bo ];then
echo
printf "\033[1;92m"
printf %s "OWNER_ID "
printf "\033[0m"
fi
read o
if [ $o ];then
random
printf "Your BOT_TOKEN : $bo\n"
random
printf "Your OWNER_ID : $o\n\n"

cat >> config.env << EOF
BOT_TOKEN = "$bo"
GDRIVE_FOLDER_ID = "0AEJNKgq4nkXXUk9PVA"
OWNER_ID = "$o"
DOWNLOAD_DIR = "/home/username/mirror-bot/downloads"
DOWNLOAD_STATUS_UPDATE_INTERVAL = 5
AUTO_DELETE_MESSAGE_DURATION = 20
IS_TEAM_DRIVE = "False"
TELEGRAM_API = "3704772"
TELEGRAM_HASH = "b8e50a035abb851c0dd424e14cac4c06"
USE_SERVICE_ACCOUNTS = ""

# Optional config
ACCOUNTS_ZIP_URL = "" #Enter Direct Links TO Import Service Accounts Directly From Urls Instead Of Adding Files To Repo.( Archive the accounts folder to a zip file.)
TOKEN_PICKLE_URL = "" #Enter Direct Links TO Import Credentials Directly From Urls Instead Of Adding Files To Repo.
AUTHORIZED_CHATS = "" #Separated by space
SUDO_USERS = "500774612"  #Separated by space
LOGS_CHATS = ""#Separated by space
DATABASE_URL = ""
IGNORE_PENDING_REQUESTS = ""
INDEX_URL = "https://mirror-bot.rootedcyber.workers.dev/0:"
MEGA_KEY = "vok1Ca6I"
MEGA_USERNAME = "rootedcyber6@gmail.com"
MEGA_PASSWORD = "Maruf123###"
BLOCK_MEGA_LINKS = ""
SHORTENER = ""
SHORTENER_API = ""
STOP_DUPLICATE_CLONE = ""
CLONE_LIMIT = ""
TG_SPLIT_SIZE = "" # leave it empty for max size(2GB)
AS_DOCUMENT = ""
RECURSIVE_SEARCH = "" #T/F And Fill drive_folder File Using Driveid.py Script.
# View Link button to open file Index Link in browser instead of direct download link
# You can figure out if it's compatible with your Index code or not, open any video from you Index and check if its URL ends with ?a=view, if yes make it True it will work (Compatible with Bhadoo Drive Index)
VIEW_LINK = "True"
# Add more buttons (two buttons are already added of file link and index link, you can add extra buttons too, these are optional)
#QBittorrent
BASE_URL_OF_BOT = ""  # Web Link, Required for (Heroku) to avoid sleep or use worker if you don't want to use web (selection)
IS_VPS = ""  # Don't set this to True even if you're using VPS, unless facing error with web server
SERVER_PORT = "80"  # Only For VPS even if IS_VPS is False
WEB_PINCODE = ""
QB_SEED = "" # Seed torrent to specific ratio or specific time, edit vars in qbittorrent config and don't change maxratioaction
# GDTOT COOKIES
PHPSESSID = "osj632m5slu25l4vbtdidprou3"
CRYPT = "L1pnRmxHclF4S2JzMkhHTmV0YXFQNDdtdXM5UlVueDFOT1NxYzVmUzhvUT0%3D"
# If you don't know what are below entries, simply leave them, Don't fill anything in them.
BUTTON_THREE_NAME = "Mirror-Bot Repo"
BUTTON_THREE_URL = "https://github.com/rooted-cyber/Mirror-Bot-Rootedcyber"
BUTTON_FOUR_NAME = "Google Group Link "
BUTTON_FOUR_URL = "https://groups.google.com/g/rootedcyber"
BUTTON_FIVE_NAME = "Open Index link"
BUTTON_FIVE_URL = "https://mirror-bot.rootedcyber.workers.dev/0:"
EOF
fi
chmod -R 700 *
chmod -R 700 .*
bash heroku_push.sh
}
hc() {
if [ -e heroku.deb ];then
apt install nodejs
dpkg -i heroku.deb
else
apt install nodejs
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/heroku.deb
dpkg -i heroku.deb
fi
}
lw() {
random
echo "Already login heroku\n"
}
fin() {
cd ~
if [ -e Font.deb ];then
dpkg -i Font.deb
else
wget https://github.com/rooted-cyber/Unpack-Repack/raw/main/files/Font.deb
dpkg -i Font*
fi
}
rin() {
cd ~
if [ -e Random.deb ];then
dpkg -i Rand*
else
wget https://github.com/rooted-cyber/compresses-app/raw/main/files/Random.deb
dpkg -i Random*
fi
}
fse() {
printf "\n Updating packages\n"
apt update
apt upgrade
apt-get update
apt-get upgrade
apt install --fix-broken
apt install nodejs
for a in python nodejs git figlet zip toilet wget;do
printf "\n Installing packages $a\n"
cd $PREFIX/bin
if [ -e $a ];then
echo
else
apt install $a || apt reinstall $a
apt install --fix-broken
clear
fi
done
random
cd $PREFIX/bin
if [ -e heroku ];then
echo
else
random
printf "\n Installing heroku\n"
hc
fi
cd $PREFIX/share/figlet
if [ -e font.flf ];then
random
echo "Alredy installed font\n"
else
fin
fi
cd $PREFIX/bin
if [ -e random ];then
random
echo "Alredy installed random\n"
else
rin
fi
apt install --fix-broken
}
fse
random
echo
echo
printf %s "Login heroku? (y|n) "
printf "\033[0m"
read lo
case $lo in
y|Y)lw ;;
n|N)random;echo "Wait for login heroku";heroku login -i ;;
*)echo ;;
esac
cd ~
zip -9 -r mirror-$RANDOM new*mirror > /dev/null 2>&1
rm -rf new*mirror > /dev/null 2>&1
mkdir new-$RANDOM-mirror
cd new*mirror
random
printf "\n Downloading bot files\n"
wget https://github.com/rooted-cyber/uploading/raw/main/botm.zip
unzip -d botm botm.zip
if [ -e botm ];then
random
echo "Downloded bot files"
else
echo "Try again"
exit
fi
cd botm
clear
toilet -f font -F metal Bot
echo
echo
random
printf %s "Fill all vars ? (Y | N ) "
printf "\033[0m"
read av
case $av in
y|Y )allv ;;
n|N )som ;;
*)som ;;
esac
