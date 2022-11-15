#!/bin/bash
screen -S InnerApi -X quit
screen -dmS InnerApi
screen -x -S InnerApi -p 0 -X stuff $'/usr/local/bin/node /opt/build/index.js >> /opt/build/Inner.md'
screen -x -S InnerApi -p 0 -X stuff $'\n'

echo "重启api"