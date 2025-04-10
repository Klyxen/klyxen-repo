echo "Installing klyxen..."
sleep 2
wget https://github.com/Klyxen/klyxen-repo/raw/main/klyxen -O klyxen
echo "Giving permissions..."
sleep 1
chmod +x klyxen
echo "Done"
echo "Moving..."
sleep 2
sudo mv klyxen /usr/bin/
echo "Done"
sleep 0.5
echo "Klyxen is ready."
sleep 0.5
echo "Running..."
sudo klyxen
rm kl.sh
