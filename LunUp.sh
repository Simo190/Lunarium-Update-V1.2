wget https://github.com/LunariumCoin/lunarium/releases/download/v1.2.0/lunarium-1.2.0-x86_64-linux-gnu.tar.gz
tar xvzf lunarium-1.2.0-x86_64-linux-gnu.tar.gz
cd lunarium-1.2.0/bin/
chmod +x lunarium-cli
chmod +x lunariumd
lunarium-cli stop
sleep 30
killall -15 lunariumd
rm /usr/local/bin/lunarium-cli
rm /usr/local/bin/lunariumd
mv lunarium-cli /usr/local/bin/
mv lunariumd /usr/local/bin/
lunariumd -daemon 
cd
rm lunarium-1.2.0-x86_64-linux-gnu.tar.gz
sleep 20
lunarium-cli -version
sleep 20
watch lunarium-cli masternode status
rm -r lunarium-1.2.0
