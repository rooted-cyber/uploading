random
echo "fixing ultroid bot"
wget -O py.tar https://github.com/rooted-cyber/uploading/raw/main/pyUlt.tar
cp py.tar /data/data/com.termux/files/usr/lib/python3.10/site-packages/pyUltroid
cd /data/data/com.termux/files/usr/lib/python3.10/site-packages/pyUltroid
tar -xf py.tar
cd ~
ub
