random
echo "Fixing kanging .. please wait"
echo
sleep 0.60
sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/uploading/main/setup.sh)"
apt autoremove clang
apt install clang
apt install --fix-broken
pip uninstsall image
pip uninstall pillow
pip install image
pip install pillow
cd ~
wget https://github.com/rooted-cyber/uploading/raw/main/PIL.tar
wget https://github.com/rooted-cyber/uploading/raw/main/Pill.tar
cp -f PIL.tar /data/data/com.termux/files/usr/lib/python3.10/site-packages
cp -f Pill.tar /data/data/com.termux/files/usr/lib/python3.10/site-packages
cd /data/data/com.termux/files/usr/lib/python3.10/site-packages
tar -cf PIL.tar
tar -cf Pill.tar
if [ -e PIL ];then
echo
random
echo "Installed"
fi
