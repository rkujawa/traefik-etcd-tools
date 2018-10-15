#!/bin/bash

source traefik-etcdctl.subr 

etcdctl --endpoints=$ETCD_ENDPOINT get "" --prefix=true

