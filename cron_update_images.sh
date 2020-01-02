#!/bin/bash
echo '0  4    * * *   root    /bin/systemctl reload docker-compose@*.service' >> /etc/crontab
