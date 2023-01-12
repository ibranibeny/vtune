## BUILD DOCKER ##
docker build -t vtune-intel:latest .
## RUN CONTAINER ##
docker run -d -p 443:9443 vtune-intel:latest
## GET the url to reset passphrase ##
docker logs [container_ID]