# vcs-k8s-images

BUILD:
etcd: 
docker build -t [REPO]/vcs-etcd:[TAG] .
master:
make build VERSION=v1.5.1
worker:
make build VERSION=v1.5.1

RUN:
docker --tls run --ip 172.16.0.6 -d --name etcd-node luomiao/vcs-etcd:v0.4
docker --tls run -it --ip 172.16.0.7 --name master-node luomiao/vcs-master:v0.7 bash
docker --tls run -it --ip 172.16.0.8 --name worker-node luomiao/vcs-worker:v0.7 bash
