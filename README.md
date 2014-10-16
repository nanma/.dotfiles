.dotfiles
========

个人配置文件仓库。

# 简介
.dotfiles用来保存Linux/OS X下的各种配置文件。

# 使用方法
1. 如果需要，请先备份好$HOME目录下的配置文件；
2. `cd ~ && git clone git@github.com:nanma/.dotfiles.git`；
3. 如果有敏感信息不宜暴露，可以新建文件~/.dotfiles/dotshells/.sensitive，将这些信息添加到文件中；
4. `~/.dotfiles/bootstrap.sh`；
5. 配置完成。
