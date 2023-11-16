#!/bin/bash
rm -fr ~/.config/nvim
ln -s "$(dirname -- $(realpath "$0"))/nvim"  ~/.config/nvim


