# Docker Firecracker

Generic container for launching a firecracker microVM inside a Docker container

> * It attaches to the VM as many NICs as the docker container has 
> * Outputs serial console to stdio, thus visible using docker logs   

### Getting Started :

### Build the docker container 
```sh 
git clone https://github.com/s8sg/docker-firecracker
cd docker-firecracker
make
```

### Build your root fs using fs-base `currently only supported GO`
```sh
./build-fs ./my-go-app my_root_fs
```

### Running
```sh
docker run                                        \
      -td                                         \
      --privileged                                \
      -v /path_to/my_root_fs:/rootfs/image        \
      -p <port>:<port>                            \
      s8sg/docker-firecracker
```
