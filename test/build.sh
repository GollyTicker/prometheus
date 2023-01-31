echo "This will take quite a few minutes ...."
sleep 5s

make build
make assets
go build cmd/prometheus/main.go

echo "Done."
