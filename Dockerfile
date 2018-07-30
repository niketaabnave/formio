FROM node:8

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY . /var/www

RUN apt-get update && apt-get install nc -y

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 3001
