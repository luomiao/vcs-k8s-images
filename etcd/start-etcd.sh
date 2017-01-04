#!bin/bash
mkdir -p /var/etcd/data
/usr/local/bin/etcd --listen-client-urls=http://0.0.0.0:2379,http://0.0.0.0:4001 -advertise-client-urls=http://${ETCD_IP}:2379 --listen-peer-urls=http://0.0.0.0:2380 --data-dir=/var/etcd/data --initial-cluster=etcd0=http://${ETCD_IP}:2380 --name=etcd0 --initial-advertise-peer-urls=http://${ETCD_IP}:2380
