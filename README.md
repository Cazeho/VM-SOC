# VM-SOC

## prerequisites

### install virtualbox
https://www.virtualbox.org/wiki/Downloads

### install vagrant
https://developer.hashicorp.com/vagrant/install?product_intent=vagrant

## How to deploy VM-SOC

```
git cole https://github.com/Cazeho/VM-SOC.git
cd VM-SOC/vagrant
vagrant up soc
```

## How to set Velociraptor web server

```
velociraptor --config server.config.yaml config generate > config.yaml
change in config.yaml all localhost --> $IP
velociraptor --config config.yaml user add admin --role administrator
password
velociraptor --config config.yaml frontend -v
```

## Web app

- Filemanager --> port 5000
- Cyberchef --> port 8000


## Forensic analysis

- memory dump
- disk dump
- network dump

## Malware analysis

- Excel, pdf, word (doc, docx), pe file (.exe), js, python


## List of used Tools

- binutils
- foremost
- sleuthkit
- dissect
- balbuzard
- peepdf
- volatility
- volatility + plugins
- velociraptor
- docker
- docker-compose
- cyberchef
- filemanager
- binwalk
- yara
- pescan
- clamav
- lnkparse
- floss
- oletools
- malwoverview.py
- capa
- pdfid
- base64dump
- pdf-parser
- zipdump
- objdump
- olefile
- pecheck
