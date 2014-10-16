#!/bin/bash
#建立各项配置文件的软链，请做好相应文件的备份！

#链接shell文件
ln -sf ~/.dotfiles/dotshells/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/dotshells/.bash_profile ~/.bash_profile

rm -rf ~/.oh-my-zsh/custom
ln -sf ~/.dotfiles/dotshells/oh-my-zsh/custom ~/.oh-my-zsh/custom

#链接emacs文件
ln -sf ~/.dotfiles/emacs/prelude/prelude-modules.el ~/.emacs.d/prelude-modules.el

rm -rf ~/.emacs.d/personal
ln -sf ~/.dotfiles/emacs/prelude/personal ~/.emacs.d/personal
