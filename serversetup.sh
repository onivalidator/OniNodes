#!/bin/sh

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Install .deb installer
sudo apt install gdebi

# Install Nautilus
sudo apt-get update
sudo apt install seahorse-nautilus
sudo nautilus -q

# update the local package list and install any available upgrades
sudo apt-get update && sudo apt upgrade -y

# Install toolchain and ensure accurate time synchronization
sudo apt install curl tar wget pkg-config libssl-dev jq build-essential git make ncdu -y

# Install Golang (Go)
wget https://golang.org/dl/go1.17.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.17.5.linux-amd64.tar.gz

# Configure Go path
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GO111MODULE=on
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
source ~/.profile
go version