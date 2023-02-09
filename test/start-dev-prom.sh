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

# attempt to use docker
# the binary doesn'T quite work. we need to build the docker image somehow differently
# docker rm -f test-prom || true
# rm -f test/prom.{out,err} || true
# docker run --name test-prom \
#   -v $PWD/test/data:/prometheus/data \
#   -v $PWD/test/prometheus.yml:/prometheus.yml \
#   -v $PWD/main:/bin/prometheus \
#   -p 9090:9090 \
#   --privileged -it \
#   --entrypoint sh "prom/prometheus-linux-amd64:latest"
# # --entrypoint sh
# # -c "ls -lah /bin/prometheus && id && chown -v nobody /bin/prometheus && /bin/prometheus"
# # # -u "$(id -u):$(id -g)" \
# docker logs -f test-prom >test/prom.out 2>test/prom.err &

# TEST QUERY
QUERY='wasm("array",node_cpu_seconds_total)'
SECONDS_BEFORE=60

# QUERY='sum(wasmr(2,node_hwmon_temp_celsius[10m]))'
# SECONDS_BEFORE=300

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
