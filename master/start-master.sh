echo "Starting Kubernetes master"
service docker start
sleep 10
##docker load -i flannel.docker
#docker load -i hyperkube.docker
export ETCD_IPS=172.16.0.6
export FLANNEL_NETWORK=10.2.0.0/16
/root/docker-multinode/master.sh
echo "done"
