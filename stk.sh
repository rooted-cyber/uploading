sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/uploading/main/setup.sh)"
random
echo "Fixing kanging stickers"
echo
cd ~
wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/PIL.zip
cd /data/data/com.termux/files/usr/lib/python3.10/site-packages
rm -rf PIL
cd ~
cp -f PIL.zip /data/data/com.termux/files/usr/lib/python3.10/site-packages
unzip PIL.zip
ub
