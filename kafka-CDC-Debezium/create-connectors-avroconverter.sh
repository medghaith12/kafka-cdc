
curl -H 'Content-Type: application/json' localhost:8093/connectors --data '
{
"name": "postgres-source-connector",
"config": {
  "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
  "topic.prefix": "product",
  "database.port": "5432",
  "database.user": "postgres",
  "database.dbname": "products",
  "database.hostname": "postgres",
  "database.password": "postgres",
  "plugin.name": "pgoutput",
  "table.include.list": "public.product"
}
}
'


curl -i -X POST http://localhost:8083/connectors \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d @connectors/mongodb-connector-config.json
