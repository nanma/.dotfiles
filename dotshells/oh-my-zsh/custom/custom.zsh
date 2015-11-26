# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#

sensitive=~/.dotfiles/dotshells/.sensitive
#加载不宜公开的个人数据
test -e $sensitive && {
    source $sensitive
}

alias reload_zsh=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

# Mac Helpers
alias show_hidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Emacs设置
alias emacs="~/workspace/script/emacs_client.sh -t"
alias em="emacs"
alias emasc="emacs"
alias emd="emacs -e '(kill-emacs)'"

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"

# javac编译显示为英文提示
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
