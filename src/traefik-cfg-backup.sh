#!/bin/bash

source traefik-etcdctl.subr 

DATETIME=$(date +%Y%m%d-%H%M)
BACKUPFN=snapshot-${DATETIME}.db

cd /backup
etcdctl --endpoints=$ETCD_ENDPOINT snapshot save $BACKUPFN
xz $BACKUPFN

