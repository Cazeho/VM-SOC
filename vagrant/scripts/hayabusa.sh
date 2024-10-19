#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustup update stable


git clone https://github.com/Yamato-Security/hayabusa.git --recursive
cd hayabusa && cargo build --release
ln -s $PWD/target/release/hayabusa /usr/local/bin/hayabusa
hayabusa update-rules

