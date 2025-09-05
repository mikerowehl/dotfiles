# dotfiles

I don't manage a ton of my config this way, and I only have to sync it between a few machines.
So I don't have a complicated process to link everything up, I just do it manually if and when I need to.
I'll check out this repo somewhere in my home directory, and just symlink the directories I want to use.

* cd ~
* git clone git@github.com:mikerowehl/dotfiles.git
* cd ~/.config
* ln -s ~/dotfiles/nvim
* ln -s ~/dotfiles/tmux
* echo 'source ~/dotfiles/bash/prompt' >> ~/.bashrc

Notes about the bash stuff in the bash directory.
