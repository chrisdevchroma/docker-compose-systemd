# Docker compose systemd service

* Create `/etc/docker-compose` folder
* Copy docker-compose@.service to `/etc/systemd/system/docker-compose@.service`
* (Optional) Copy repository contents to `/etc/docker-compose`

## Add new Docker compose service
* Create a `/etc/docker-compose/\<servicename\>` directory
* Create a `/etc/docker-compose/\<servicename\>/docker-compose.yml` file

## Enable Docker compose service
* Start the service via `systemctl start docker-compose@\<servicename\>`
* (Optional) Start the service on boot with `systemctl enable docker-compose@\<servicename\>`

## Update images with cron
Execute the following line as root:
```
echo '0  4    * * *   root    /bin/systemctl reload docker-compose@*.service' >> /etc/crontab
```

## Updated images with watchtower
Uncomment '--no-pull' in watchtower/docker-compose.yml (and remove the line in crontab)

## Included services (with armv7 & armv8/64 support)
* gitea
* lanraragi
* plex
* watchtower
