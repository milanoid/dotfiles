#!/bin/bash
mv ~/.bashrc ~/.bashrc.bak
cd ~/dotfiles
stow -v 3 -t ~ bash
