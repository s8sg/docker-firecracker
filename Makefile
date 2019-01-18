all: clean docker-firecracker buildfs

docker-firecracker:
	docker build --build-arg CODEDIR: -t s8sg/docker-firecracker:0.1.0 .
	docker tag s8sg/docker-firecracker:0.1.0 s8sg/docker-firecracker:latest

buildfs:
	# Building root fs builder
	docker build -t s8sg/root-fs-builder:0.1.0 ./root-fs-builder
	docker tag s8sg/root-fs-builder:0.1.0 s8sg/root-fs-builder:latest
	sh build-fs

clean:
	rm -r rootfs; exit 0
