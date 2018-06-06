FROM ubuntu:16.04
MAINTAINER Eric Turnbull "user5@kiddcorp.com"
RUN apt-get update && apt-get install nginx -y
RUN echo "hi there" > /var/www/html/index.html
#ONBUILD
#ADD     add file (will expand zips) from local machine to image
#COPY    copy files from local machine to image
#WORKDIR sets working directory for subsequent commands

#CMD        runs commands when container started, overwriteable
#ENTRYPOINT same as CMD but cannot be overwritten

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

EXPOSE 80


