echo "Starting Kubernetes worker"
service docker start
sleep 10
#docker load -i hyperkube.docker
export ETCD_IPS=172.16.0.6
export MASTER_IP=172.16.0.7
export FLANNEL_NETWORK=10.2.0.0/16
/root/docker-multinode/worker.sh
echo "done"
