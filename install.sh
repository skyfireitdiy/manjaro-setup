#!/bin/bash

# config application source
sudo chmod 666 /etc/pacman.conf
sudo echo '
[archlinuxcn]
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
' >> /etc/pacman.conf
sudo chmod 644 /etc/pacman.conf
sudo pacman-mirrors -c China
sudo pacman -Sy
sudo pacman -S archlinuxcn-keyring

# refresh application list
sudo pacman -S yay

# application
yay -S fcitx manjaro-asian-input-support-fcitx fcitx-sogoupinyin wqy-microhei fish make xmake go 
chsh -s /usr/bin/fish 
sudo chsh -s /usr/bin/fish 

# git alias
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.br branch
git config --global alias.bra branch -a
git config --global alias.co checkout
git config --global alias.mg merge
git config --global alias.cp cherry-pick
git config --global alias.rb rebase
git config --global pull.rebase true
git config --global core.editor vim

# fish abbr
fish -c "abbr -a -U -- a 'abbr -a'"
fish -c "abbr -a -U -- g git"
fish -c "abbr -a -U -- gpl 'git pull'"
fish -c "abbr -a -U -- gps 'git push'"
fish -c "abbr -a -U -- gs 'git status'"
fish -c "abbr -a -U -- xm xmake"
fish -c "abbr -a -U -- yi 'yay -S'"
fish -c "abbr -a -U -- yu 'yay -Sy'"
fish -c "abbr -a -U -- yuu 'yay -Su'"
fish -c "abbr -a -U -- ys 'yay -Ss'"
fish -c "abbr -a -U -- ga 'git add -u'"
fish -c "abbr -a -U -- gc 'git commit'"
fish -c "abbr -a -U -- gl 'git lg'"
fish -c "abbr -a -U -- gco 'git checkout'"
