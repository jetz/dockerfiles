#!/bin/sh

set -e

# if no args or args start with `-`, then run etcd
if [[ "$1" == "" || "${1#-}" != "$1" ]]; then
    exec etcd $@
else
    exec $@
fi
