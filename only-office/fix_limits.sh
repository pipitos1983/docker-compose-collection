
CONFIG="/etc/onlyoffice/documentserver/default.json"
F='"uncompressed": "50MB"'
T='"uncompressed": "350MB"'

docker exec documentserver sed -i "s/$F/$T/" $CONFIG
docker-compose restart documentserver
