#!/bin/bash

set -eu

cd test

docker compose down

docker compose up -d

pkill -f "../main"

(
  cd ..
  ./main \
    --config.file=test/prometheus.yml \
    --storage.tsdb.path=test/data >test/prom.out 2>test/prom.err &
)

echo "Open prometheus via http://localhost:9090"
