#/bin/bash!
# run this script: bash install.sh
#
# It will NOT work with bourne shell, e.g. sh install.sh

echo  "Script to install PapyElGringo's Material Shell Interface for Gnome"
echo
echo "IMPORTANT: This script requires you to restart the gnome shell during the install process."
echo
read -rsp $'Press [return] to continue or [Ctrl] + [C] to exit...\n'
clear

echo -n "installing git ... "
sudo DEBIAN_FRONTEND=noninteractive apt-get install -qq git < /dev/null > /dev/null
echo "Complete!"
echo
echo -n "cloning PapyElGringo's material shell from github ... "
DEBIAN_FRONTEND=noninteractive git clone https://github.com/PapyElGringo/material-shell.git ~/.local/share/gnome-shell/extensions/material-shell@papyelgringo </dev/null > /dev/null
echo "Complete!"
echo
echo "Restarting Gnome Shell ... "
read -rsp $'Press [return] to continue or [Ctrl] + [C] to cancel restart or gnome shell and exit install...\n'
echo -n "Waiting for gnome Shell to restart (15 seconds) ... "
killall -3 gnome-shell
sleep 15
echo "Complete!"
echo -n "Activating Material Shell ... "
DEBIAN_FRONTEND=noninteractive gnome-extensions enable material-shell@papyelgringo < /dev/null > /dev/null
echo "Complete!"
echo

