#!/bin/bash

source traefik-etcdctl.subr 

if [ -z "$1" ] || [ -z "$2" ] ; then
	echo usage: $0 key value
	exit 1
fi

etcdctl --endpoints=$ETCD_ENDPOINT put $1 $2

