#!/bin/bash

deploy_cert() {
    service nginx restart;
}

HANDLER="$1"; shift
if [[ "${HANDLER}" =~ ^deploy_cert$ ]]; then
    deploy_cert "$@"
fi
