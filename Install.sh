#Oh My ZSH
sudo apt install -y git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --recursive git://github.com/joel-porquet/zsh-dircolors-solarized $ZSH_CUSTOM/plugins/zsh-dircolors-solarized
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sudo apt install fonts-powerline
fc-cache -vf
ln -s /home/core/Documents/dotfiles/zsh/.zshrc ~/.zshrc
ln -s /home/core/Documents/dotfiles/.aliases ~/.aliases
ln -s /home/core/Documents/dotfiles/.functions ~/.functions


#Ranger
sudo apt install ranger caca-utils highlight atool w3m poppler-utils mediainfo
ranger --copy-config=all
ln -s /home/core/Documents/dotfiles/ranger/rc.conf /home/core/.config/ranger/rc.conf


git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
cd ~/.config/ranger/plugins/ranger_devicons
make install

#Emacs
sudo apt install emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

#Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install sublime-text
sudo sed -i "s/\x97\x94\x0D\x00/\x00\x00\x00\x00/g" /opt/sublime_text/sublime_text

#Visual Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update && sudo apt install code

#Typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
echo -e "\ndeb https://typora.io/linux ./" | sudo tee -a /etc/apt/sources.list
sudo apt update && sudo apt install typora

#sxiv
sudo apt install sxiv
~/.config/sxiv/exec/key-handler

#Vim
curl -sLf https://spacevim.org/install.sh | zsh
ln -s /home/core/Documents/dotfiles/.SpaceVim.d /home/core/.SpaceVim.d 
