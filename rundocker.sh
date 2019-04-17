#!/bin/bash
cd /vagrant
docker build . -t mssql
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=123456x@X' -p 1433:1433 --name sqlserver -d mssql
docker exec -it sqlserver /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 123456x@X -i /online.sql