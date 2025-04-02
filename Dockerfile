FROM ubuntu
MAINTAINER Etienne <etiennesenef1@gmail.com>

# Mise à jour + installation d'Apache et outils réseau
RUN apt-get update && apt-get install -y iputils-ping
COPY ./entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
CMD /usr/bin/entrypoint.sh