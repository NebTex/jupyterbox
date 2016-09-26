#!/bin/sh

# download last version of the init script
cd /srv/singleuser/
wget https://gist.githubusercontent.com/criloz/8e72b79723d328c8f4b0470bf10e1a1d/raw/cloud_init.sh
chmod +x /srv/singleuser/cloud_init.sh
/srv/singleuser/cloud_init.sh
sed -i -e "s/{{user}}/${JPY_USER}/g" /usr/local/etc/haproxy/haproxy.cfg
sed -i -e "s/{{user}}/${JPY_USER}/g" /usr/local/etc/haproxy/haproxy.cfg
supervisord -n
