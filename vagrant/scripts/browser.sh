#!/bin/bash

cd /opt
mkdir kasm
cd kasm

cat <<EOF > docker-compose.yml
version: "3"
services:
  kasm:
    image: lscr.io/linuxserver/kasm:latest
    container_name: kasm
    privileged: true
    environment:
      - KASM_PORT=8443
    ports:
      - 3000:3000
      - 8443:443
EOF
