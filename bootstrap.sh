#!/bin/bash
#建立各项配置文件的软链，请做好相应文件的备份！

#shell设置
#安装oh-my-zsh(https://github.com/robbyrussell/oh-my-zsh)
curl -L http://install.ohmyz.sh | sh

#链接shell文件
ln -sf ~/.dotfiles/dotshells/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/dotshells/.bash_profile ~/.bash_profile

rm -rf ~/.oh-my-zsh/custom
ln -sf ~/.dotfiles/dotshells/oh-my-zsh/custom ~/.oh-my-zsh/custom

chsh -s /bin/zsh
source ~/.zshrc
source ~/.bash_profile

#emacs设置
#安装emacs配置prelude(https://github.com/bbatsov/prelude)
curl -L http://git.io/epre | sh

#链接emacs文件
ln -sf ~/.dotfiles/emacs/prelude/prelude-modules.el ~/.emacs.d/prelude-modules.el

rm -rf ~/.emacs.d/personal
ln -sf ~/.dotfiles/emacs/prelude/personal ~/.emacs.d/personal
