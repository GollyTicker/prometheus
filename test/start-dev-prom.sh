#!/bin/bash

set -eu

(
  cd test
  docker compose down
  docker compose up -d
)

pkill -f "prometheus" || true

rm -f test/prom.{out,err}

./main \
  --config.file=test/prometheus.yml \
  --storage.tsdb.path=test/data \
  >test/prom.out 2>test/prom.err &

# TEST QUERY
# QUERY='wasm("array",node_cpu_seconds_total)'
SECONDS_BEFORE=60

QUERY='sum(wasmr(0,node_hwmon_temp_celsius[2m]))'
SECONDS_BEFORE=300

NOW="$(date +%s)"
BEFORE="$(($NOW - $SECONDS_BEFORE))"

echo "Open prometheus via http://localhost:9090. Try query '$QUERY' with ${SECONDS_BEFORE}s interval!"

sleep 1s
echo "Sending test query:"

curl -s --fail "http://localhost:9090/api/v1/query_range?start=$BEFORE&end=$NOW&step=10" \
  --data-urlencode "query=$QUERY" \
  -H 'Accept: application/json' \
  -H 'Cache-Control: no-cache' |
  jq ".data.result[0].values | map(.[1])" || true

tail -n 15 test/prom.*
