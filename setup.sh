#!/bin/sh

set -ex

echo $PWD
apt-get update
apt-get install -y zsh language-pack-en --fix-missing
update-locale
git clone https://github.com/ohmyzsh/ohmyzsh.git /root/.oh-my-zsh
ln -s /root/config/.zshrc /root/

# curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
