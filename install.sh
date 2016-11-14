cd ~/Desktop
sudo apt-get update
sudo apt-get -y install libxss1 libappindicator1 libindicator7 \
	zsh git-core htop vim ansible openssh-server
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo apt-get install -f -y
google-chrome-stable
rm google-chrome*.deb

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get -y install sublime-text-installer terminator
sudo update-alternatives --config x-terminal-emulator
echo '{
	"font_size": 13,
	"tab_size": 4,
	"translate_tabs_to_spaces": false
}' > ~/.config/sublime-text-3/Packages/user/Preferences.sublime-settings

sudo apt-get -y install python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install virtualenv

git config --global user.email "shenantingtt@gmail.com"
git config --global user.name "Anting Shen"
git config --global push.default simple

echo 'Checklist:'
echo 'Update hosts file with adblocks'
echo 'Install "texlive-full" if needed'
echo 'Copy/update a ~/.ssh folder'
