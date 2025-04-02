# VDE_DOCKER_ncpy178

```bash
docker-compose build
# Pour builder l'image qui est tagé app_ping:latest
docker-compose up #pour charegr tout ça pour voir ce qu'il se passe derriere mains on constate qu'il n'est pas capable de pinguer. parce qu'il n'ya pas de réseau entre les deux. du coup il est important que les volumes et tous les services soit actifs


git push --force-with-lease origin EXAMPLE-BRANCH