#!/bin/bash
POD_NAME=$1

docker cp ./be_80215.sql $POD_NAME:/tmp/be_80215.sql
docker cp ./db_init.sh $POD_NAME:/tmp/db_init.sh

docker exec $POD_NAME chmod +x /tmp/db_init.sh

docker exec $POD_NAME /tmp/db_init.sh

docker exec $POD_NAME rm /tmp/db_init.sh
docker exec $POD_NAME rm /tmp/80215.sql
