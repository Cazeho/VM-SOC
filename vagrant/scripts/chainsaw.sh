#!/bin/bash



# chainsaw

cd /opt
git clone https://github.com/WithSecureLabs/chainsaw.git && cd chainsaw
apt install cargo -y
cargo build --release
cd target/release
ln -s $PWD/chainsaw /usr/local/bin/chainsaw


# Manalyze

cd /opt
git clone https://github.com/JusticeRage/Manalyze.git && cd Manalyze
apt-get install libboost-regex-dev libboost-program-options-dev libboost-system-dev libboost-filesystem-dev libssl-dev build-essential cmake git -y
cmake .
make -j5
cd bin
ln -s $PWD/manalyze /usr/local/bin/manalyze
