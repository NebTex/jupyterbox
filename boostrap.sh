#!/bin/sh

# download last version of the init script
cd /srv/singleuser/
wget https://raw.githubusercontent.com/NebTex/jupyterbox/master/cloud_init.sh
chmod +x cloud_init.sh
/cloud_init.sh
supervisord -n