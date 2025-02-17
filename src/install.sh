#! /bin/sh

set -eux
set -o pipefail

apk update

# install tools
apk add gnupg python3 py3-pip aws-cli curl

# install go-cron
curl -L https://github.com/odise/go-cron/releases/download/v0.0.6/go-cron-linux.gz | zcat > /usr/local/bin/go-cron
chmod u+x /usr/local/bin/go-cron
apk del curl

# cleanup
rm -rf /var/cache/apk/*
