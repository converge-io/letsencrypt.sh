#!/bin/bash
CDIR=`dirname $0`
"$CDIR/cloudflare/hook.py" "$@" # Hook for automatic DNS-01 challenge deployment on Cloudflare
"$CDIR/nginx/hook.sh" "$@" # Restart nginx server
