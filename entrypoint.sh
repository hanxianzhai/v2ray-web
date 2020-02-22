#!/bin/sh
set -eu

if expr "$1" : "supervisord" 1>/dev/null; then
   if [ ! -f /etc/v2ray/config.json ] || [ ! -f /opt/v2ray-manager/config/admin.yaml ] || [ ! -f /opt/v2ray-manager/config/proxy.yaml ]; then
   echo "Missing profile ..."
   exit 1
   else
   echo "Start v2ray and v2ray-manager ..."
   fi
fi

exec "$@"