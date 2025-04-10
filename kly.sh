file_path="/usr/bin/klyxen"

if [ -e "$file_path" ]; then
  echo "Klyxen is already existing!"
else
  echo "[ % ] : Installing klyxen..."
  sleep 2
  wget https://github.com/Klyxen/klyxen-repo/raw/main/klyxen -O klyxen
  echo "[ 25% ] : Giving permissions..."
  sleep 1
  chmod +x klyxen
  echo "[ 30% ] : Done"
  echo "[ 31% ] : Moving..."
  sleep 2
  sudo mv klyxen /usr/bin/
  echo "[ 50% ] : Done"
  sleep 0.5
  echo "[ Done ] : Klyxen is ready."
  sleep 0.5
  echo "Running..."
  sudo klyxen
  rm kly.sh
fi
