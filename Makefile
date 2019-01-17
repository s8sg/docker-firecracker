all: basefs docker-firecracker

docker-firecracker:
	docker build -t s8sg/docker-firecracker:0.1.0 .
	docker tag s8sg/docker-firecracker:0.1.0 s8sg/docker-firecracker:latest

basefs:
	echo "Building go fs base"
	docker build -t s8sg/microvm-base-go:0.1.0 ./fs-base/go
	docker tag s8sg/microvm-base-go:0.1.0 s8sg/microvm-base-go:latest
