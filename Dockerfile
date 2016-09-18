# Build as jupyterhub/singleuser
# Run with the DockerSpawner in JupyterHub

FROM nebtex/python-base:machine-learning

MAINTAINER Nebular Vortex <publicdev@nebtex.com>

EXPOSE 8888

ADD jupyterhub-singleuser.py /usr/local/bin/jupyterhub-singleuser
RUN chmod 755 /usr/local/bin/jupyterhub-singleuser

ADD singleuser.sh /srv/singleuser/singleuser.sh

CMD ["sh", "/srv/singleuser/singleuser.sh"]