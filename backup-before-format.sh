#! /bin/bash

rsync -av --delete /root/.bash_aliases /home/franklin.lugo/repositories/dotfiles/bash_aliases-root
rsync -av --delete /home/franklin.lugo/.bash_aliases /home/franklin.lugo/repositories/dotfiles/bash_aliases-user
rsync -av --delete /root/.zshrc /home/franklin.lugo/repositories/dotfiles/.zshrc-root
rsync -av --delete /home/franklin.lugo/.zshrc /home/franklin.lugo/repositories/dotfiles/.zshrc-user
rsync -av --delete /home/franklin.lugo/.tmux.conf /home/franklin.lugo/repositories/dotfiles/.tmux.conf