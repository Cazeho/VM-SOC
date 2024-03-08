#!/bin/bash

cd /opt

wget https://github.com/Velocidex/velociraptor/releases/download/v0.6.0-rc1/velociraptor-v0.6.0-rc1-linux-amd64
chmod +x velociraptor-v0.6.0-rc1-linux-amd64
mv velociraptor-v0.6.0-rc1-linux-amd64 /usr/local/bin/velociraptor
