ab() {
if [ -e ngrok-stable-linux-arm.tgz ];then
gzip -d ngrok-stable-linux-arm.tgz
tar -xf ngrok*tar
else
printf "\n Downloading ngrok\n\n"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.tgz
gzip -d ngrok-stable-linux-arm.tgz
tar -xf ngrok*tar
fi
}
ab