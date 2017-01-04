FROM luomiao/gcr-etcd-amd64:3.0.4
ARG ETCD_ADVERTISE_URL=http://172.16.0.6:2379
ARG ETCD_CLUSTER=etcd0=http://172.16.0.6:2380
ARG ETCD_PEER_URL=http://172.16.0.6:2380
ENV ETCD_ADVERTISE_URL $ETCD_ADVERTISE_URL
ENV ETCD_CLUSTER $ETCD_CLUSTER
ENV ETCD_PEER_URL $ETCD_PEER_URL
RUN mkdir -p /var/etcd/data
CMD ["/usr/local/bin/etcd", "--listen-client-urls=http://0.0.0.0:2379,http://0.0.0.0:4001", "--advertise-client-urls=http://172.16.0.6:2379", "--listen-peer-urls=http://0.0.0.0:2380", "--data-dir=/var/etcd/data", "--initial-cluster=etcd0=http://172.16.0.6:2380", "--name=etcd0", "--initial-advertise-peer-urls=http://172.16.0.6:2380"]
