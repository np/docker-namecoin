#!/bin/bash
set -e

if [ "$1" = 'namecoin' ]; then
    shift
    if [ -e /data/namecoin.conf ];
      exec namecoind -datadir=/data "$@"
    else
      echo 'No /data/namecoin.conf, please create one.' >>/dev/stderr
      exit 1
    fi
else
    exec "$@"
fi
