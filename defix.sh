random
echo "fixing ultroid bot"
wget https://github.com/rooted-cyber/uploading/raw/main/misc.py
#cp py.tar /data/data/com.termux/files/usr/lib/python3.10/site-packages/pyUltroid
cp -f misc.py /data/data/com.termux/files/usr/lib/python3.10/site-packages/pyUltroid/functions
cd ~
ub
