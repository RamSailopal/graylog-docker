#!/bin/bash
python -m pip install sh
if [[ ! -e /var/run/graydock ]]
then
	mkdir -p /var/run/graydock
fi
if [[ ! -e /var/log/graydock ]]
then
        mkdir -p /var/log/graydock
fi
if [[ ! -e /usr/local/lib/graydock ]]
then
        mkdir -p /usr/local/lib/graydock
fi
chmod o+x graymessages
chmod o+x graydock-back
chmod o+x graydock
chmod o+x prockill

cp graymessages /usr/local/bin
cp graydock-back /usr/local/bin
cp clean.awk /usr/local/lib/graydock
cp graydock /usr/local/bin
cp prockill /usr/local/lib/graydock
