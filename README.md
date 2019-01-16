# Docker Firecracker

Generic container for launching a firecracker microVM inside a Docker container

> * It attaches to the VM as many NICs as the docker container has    
> * The VM gets the original container IPs   
> * Uses macvtap tun devices for best network throughput   
> * Outputs serial console to stdio, thus visible using docker logs   

Partially based on [BBVA/kvm](https://github.com/BBVA/kvm)

### Getting Started :

#### Build the docker container 
```sh 
git clone https://github.com/s8sg/docker-firecracker
cd docker-firecracker
docker build -t s8sg/docker-firecracker:0.1.0 .
```

#### Running
```sh
docker run                                        \
      -td                                         \
      --privileged                                \
      -v /path_to/image_file.qcow2:/rootfs/image  \
      s8sg/docker-firecracker:0.1.0
```
