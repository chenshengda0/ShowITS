#!/bin/bash
screen -S ExportApi -X quit
screen -dmS ExportApi
screen -x -S ExportApi -p 0 -X stuff $'/usr/local/bin/node /opt/build/index.js >> /opt/build/index.md'
screen -x -S ExportApi -p 0 -X stuff $'\n'

echo "重启api"