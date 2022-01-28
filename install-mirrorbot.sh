fse() {
printf "\n Updating packages\n"
apt update
apt upgrade
apt-get update
apt-get upgrade
apt install --fix-broken
for a in python nodejs git figlet zip toilet wget;do
printf "\n Installing packages\n"
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
if [ -e heroku ];then
echo
else
printf "\n Installing heroku\n"
npm install -g heroku
fi
cd ~
if [ -e Font.deb ];then
echo
else
wget https://github.com/rooted-cyber/Unpack-Repack/raw/main/files/Font.deb
dpkg -i Font*
fi
cd ~
if [ -e Random.deb ];then
echo
else
wget https://github.com/rooted-cyber/compresses-app/raw/main/files/Random.deb
dpkg -i Random*
fi
}
fse
random
printf "\n Login again in heroku\n"
heroku login -i
cd ~
zip -9 -r mirror-$RANDOM new*mirror > /dev/null 2>&1
rm -rf new*mirror > /dev/null 2>&1
mkdir new-$RANDOM-mirror
cd new*mirror
random
printf "\n Downloading bot files\n"
wget https://github.com/rooted-cyber/uploading/raw/main/botm.zip
unzip -d botm botm.zip
cd botm
clear
toilet -f font -F metal Bot
echo
echo
echo -e -n "\033[1;92m Bot_token\033[0m "
read bo
if [ $bo ];then
echo
echo -e -n "\033[1;92m Owner_id\033[0m "
fi
read o
if [ $o ];then
echo -e "$o $bo"
cat >> config.env << EOF
BOT_TOKEN = "$bo"
GDRIVE_FOLDER_ID = "0AEJNKgq4nkXXUk9PVA"
OWNER_ID = "$o"
DOWNLOAD_DIR = "/home/username/mirror-bot/downloads"
DOWNLOAD_STATUS_UPDATE_INTERVAL = 5
AUTO_DELETE_MESSAGE_DURATION = 20
IS_TEAM_DRIVE = "false"
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