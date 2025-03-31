FROM debian

MAINTAINER Etienne <etiennesenef1@gmail.com>

# Mise à jour + installation d'Apache et outils réseau
RUN apt-get update && apt-get install -y apache2 net-tools

# Crée le dossier si nécessaire et ajoute une page HTML
RUN mkdir -p /var/www/html
RUN echo "<h2>Bienvenue sur la formation Docker</h2>" > /var/www/html/index.html

# Expose le port HTTP
EXPOSE 80

# Lance Apache en mode "foreground" (ne pas se détacher)
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/apache2ctl"]
