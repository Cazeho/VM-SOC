cd /opt
git clone https://github.com/volatilityfoundation/volatility3.git
cd volatility3
pip install -r requirements.txt
pip install pyOpenSSL==20.0.1
ln -s $PWD/vol.py /usr/local/bin/volatility3
