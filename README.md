# dotfiles

I don't manage a ton of my config this way, and I only have to sync it between a few machines.
So I don't have a complicated process to link everything up, I just do it manually if and when I need to.
I'll check out this repo somewhere in my home directory, and just symlink the directories I want to use.

* cd ~
* git clone git@github.com:mikerowehl/dotfiles.git
* cd ~/.config
* ln -s ~/dotfiles/nvim
* ln -s ~/dotfiles/tmux

The bash directory has a few snippets I don't use on all the systems anyway.
So if needed I'll just source them from the checkout in my shell startup files. Trying to manage my full set
of shell startup files, which want to call out to all kinds of other system included resources like system
included expansion hooks and all kinds of operating system specific areas, was too much of a pain.
