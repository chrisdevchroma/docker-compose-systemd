# Notes

## Docker on debian
The docker installer uses iptables for nat, unfortunately Debian uses a modified version of nftables. 
You can setup Debian to use the legacy iptables.
```
sudo update-alternatives --set iptables /usr/sbin/iptables-legacy
sudo update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
```

The dockerd daemon should start fine after switching to iptables-legacy.
```
sudo systemctl start docker
```

## lanraragi and gitea
The lanraragi and gitea container both use port 3000 by default.
For lanraragi a alternative port can be easily configured (with or without SSL, see the docker-compose.yml file).
