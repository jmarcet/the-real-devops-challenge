#!/bin/sh

mongoimport --db=$MONGO_INITDB_DATABASE --collection=restaurant --file=/data/restaurant.json
