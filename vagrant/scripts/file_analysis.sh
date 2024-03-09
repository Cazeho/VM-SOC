#!/bin/bash

apt install yara -y
apt install binwalk -y
apt install -y pev
apt install -y clamav clamav-daemon
pip2 install -U balbuzard
pip2 install peutils


# get remote hash with reputation tools


# https://exploitreversing.com/2021/11/02/malicious-document-analysis-example-1/ 

cd /opt

# import capa-rules

wget clone https://github.com/mandiant/capa-rules/archive/refs/tags/v7.0.1.zip
unzip v7.0.1.zip
rm -rf v7.0.1.zip

git clone https://github.com/jesparza/peepdf
cd peepdf
sed -i 's/env python$/env python2/' peepdf.py
ln -s $PWD/peepdf.py /usr/local/bin/peepdf

cd /opt
mkdir tools
cd tools

wget https://raw.githubusercontent.com/DidierStevens/DidierStevensSuite/master/pdf-parser.py
wget https://raw.githubusercontent.com/DidierStevens/DidierStevensSuite/master/zipdump.py
wget https://raw.githubusercontent.com/DidierStevens/DidierStevensSuite/master/pecheck.py
wget https://raw.githubusercontent.com/DidierStevens/DidierStevensSuite/master/pdfid.py
wget https://raw.githubusercontent.com/DidierStevens/DidierStevensSuite/master/base64dump.py


chmod +x pdf-parser.py
chmod +x zipdump.py
chmod +x pecheck.py
chmod +x pdfid.py
chmod +x base64dump.py

sed -i 's/env python$/env python2/' pdf-parser.py
sed -i 's/env python$/env python2/' zipdump.py
sed -i 's/env python$/env python2/' pecheck.py
sed -i 's/env python$/env python2/' pdfid.py
sed -i 's/env python$/env python2/' base64dump.py

ln -s $PWD/pdf-parser.py /usr/local/bin/pdf-parser
ln -s $PWD/zipdump.py /usr/local/bin/zipdump
ln -s $PWD/pecheck.py /usr/local/bin/pecheck
ln -s $PWD/pdfid.py /usr/local/bin/pdfid
ln -s $PWD/base64dump.py /usr/local/bin/base64dump
