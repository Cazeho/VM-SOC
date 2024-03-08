#!/bin/bash

cd /opt

wget https://github.com/Velocidex/velociraptor/releases/download/v0.7.1/velociraptor-v0.7.1-1-linux-amd64
chmod +x velociraptor-v0.7.1-1-linux-amd64
mv velociraptor-v0.7.1-1-linux-amd64 /usr/local/bin/velociraptor
