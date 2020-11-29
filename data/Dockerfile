FROM mongo:latest

COPY ./restaurant.json /data/
COPY ./mongo_init.js /docker-entrypoint-initdb.d/
COPY ./mongo_import.sh /docker-entrypoint-initdb.d/
