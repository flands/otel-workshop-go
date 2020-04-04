#! /usr/bin/env bash



  "install": "! command -v go &>/dev/null && [ ! -d /tmp/go ] && echo \"Starting Go compiler download and installation\" && curl -sSL https://dl.google.com/go/go1.13.9.linux-amd64.tar.gz -o - | tar xzf - -C /tmp && echo \"Finished installation\"",

if [ ! -d /tmp/go ]  
    echo "installing Go 1.13"
    curl -sSL https://dl.google.com/go/go1.13.9.linux-amd64.tar.gz -o - | tar xzf - -C /tmp
then
    echo "Go 1.13 already installed"
fi


echo Starting Go server...
export GOROOT=/tmp/go
export PATH=$GOROOT/bin:$PATH
cd app
go run -mod=vendor main.go
