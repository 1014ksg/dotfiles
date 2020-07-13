#! /bin/sh

# simplescreenrecoder
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder && \
sudo apt-get update && \
sudo apt-get install -y simplescreenrecorder &&\

# terminator
sudo apt install -y terminator && \

#typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add - && \
sudo add-apt-repository 'deb https://typora.io/linux ./' && \
sudo apt-get update && \
sudo apt-get install -y typora && \

# vscode
sudo apt-get install -y curl && \
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
sudo apt-get update && \
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/ && \
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' && \
sudo apt-get install -y apt-transport-https && \
sudo apt-get update && \
sudo apt-get install -y code && \

# chrome
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && \
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && \
sudo apt-get update && \
sudo apt-get install -y google-chrome-stable && \

# psensor
sudo apt install -y psensor && \

# exfat
sudo apt-get install exfat-fuse exfat-utils && \

# VLC
sudo apt install -y vlc && \

# show git branch in terminal(not work)
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh && \
chmod a+x ~/.git-prompt.sh && \
echo "source ~/.git-prompt.sh" >> ~/.bashrc && \
sudo sed -i -e "s/\\[\\033[01;34m\\]\w\\[\\033[00m\\]\\$/\\[\\033[01;34m\\]\\w\\[\\033[1;31m\\]$(__git_ps1)\\[\\033[00m\\]\$/g" ~/.bashrc && \
source ~/.bashrc && \

# gnome-tweak & extension
sudo apt install -y gnome-tweaks && \
sudo apt install -y chrome-gnome-shell && \

# display date
gsettings set org.gnome.desktop.interface clock-show-date true && \

# delete cache
sudo apt clean
