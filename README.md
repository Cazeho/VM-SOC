# VM-SOC


# How to set Velociraptor web server

```
velociraptor --config server.config.yaml config generate > config.yaml
change localhost --> $IP
velociraptor --config config.yaml user add admin --role administrator
password
velociraptor --config config.yaml frontend -v


```
