echo "installing klyxen..."
sleep 2
wget https://github.com/Klyxen/klyxen-repo/raw/main/klyxen -O klyxen
echo "giving permissions..."
sleep 1
chmod +x klyxen
echo "done"
echo "moving..."
sleep 2
mv klyxen /usr/bin/
echo "done"
sleep 0.5
echo "klyxen is ready."
sleep 1
sudo klyxen
