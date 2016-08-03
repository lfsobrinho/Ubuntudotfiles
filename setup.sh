echo "Setup Ubuntu"

sudo sh install-software.sh
sudo sh install-atom-plugins.sh

cp .bashrc ~/
cp .gitignore_global ~/

# To install "chmod +x *.sh"
