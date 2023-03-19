#!/bin/bash
#Install volatility 2 no Kali Linux 2020-4
# Kali Linux 100% Ok
# Kali Purple 100%  Ok
apt update
apt install -y build-essential git libdistorm3-dev yara libraw1394-11 libcapstone-dev capstone-tool tzdata curl

apt install -y python2 python2.7-dev libpython2-dev
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
python2 get-pip.py
python2 -m pip install -U setuptools wheel

python2 -m pip install -U distorm3 yara pycrypto pillow openpyxl ujson pytz ipython capstone
python2 -m pip install yara
ln -s /usr/local/lib/python2.7/dist-packages/usr/lib/libyara.so /usr/lib/libyara.so
python2 -m pip install -U git+https://github.com/volatilityfoundation/volatility.git
