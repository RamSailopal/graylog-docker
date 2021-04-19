#!/bin/bash
 ps -ef | awk '/var\/log\/graydock/ || /graydock-back/ || /graymessages/ { system("kill -9 "$2) }'
