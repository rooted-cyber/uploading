ab() {
printf "\n Downloading ngrok\n"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.tgz
gzip -d ngrok*tg
tar -xf ngrok*tar
}
ab