#!/bin/bash

# export HOMEBREW_NO_INSTALL_FROM_API=1
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"


INSTALLATIONS="go python rustup docker kubectl neovim"


for INSTALLATION in $INSTALLATIONS
do
    brew install "${INSTALLATION}"
done

VIS="visual-studio-code iterm2"

for VI in VIS
do
    brew install --cask "${VI}"
done

go version
echo "Go Installed"

rustup-init
rustc --version
echo "Rust Installed"