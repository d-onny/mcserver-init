#!/bin/bash

#If URL is passed in as env variable, use that instead. Otherwise, run the python script to get latest build.
if [[ ! -v URL ]]; then
  python3 /server/python/mcscrape.py
  cat url.env
  set -a; source url.env; set +a
fi

cd /server/mount

#grab files and unzip
wget "$URL" -O temp.zip
unzip temp.zip
rm temp.zip

#eula.txt needed to start server
echo "eula=true" > eula.txt

#Start server
chmod +x launch.sh
./launch.sh

#For server crash or container exit
echo "URL OF BUILD BELOW:"
echo $URL


