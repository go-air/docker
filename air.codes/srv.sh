#!/bin/sh

cd /dev
git clone https://github.com/go-air/pal.git
cd pal
git checkout proto
godoc -http=:80
