#!/bin/bash
cd /vagrant
docker build . -t mssql
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=123456x@X' -p 1433:1433 -d mssql
docker exec -it $(docker ps -aq) /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 123456x@X -d online -i /vagrant/database/online.sql