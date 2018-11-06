#!/bin/bash

source traefik-etcdctl.subr 

if [ -z "$1" ] ; then
	echo usage: $0 key
	exit 1
fi

etcdctl --endpoints=$ETCD_ENDPOINT del $1

