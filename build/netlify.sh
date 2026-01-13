#!/bin/bash

set -e -x

ZOLA_VERSION=0.21.0

CACHE=$NETLIFY_BUILD_BASE/cache
echo $PWD

if [ ! -e $CACHE/zola ]; then
    curl -L -O https://github.com/getzola/zola/releases/download/v${ZOLA_VERSION}/zola-v${ZOLA_VERSION}-x86_64-unknown-linux-gnu.tar.gz
    tar xzf zola-v${ZOLA_VERSION}-x86_64-unknown-linux-gnu.tar.gz -C $CACHE
    chmod +x $CACHE/zola
fi

$CACHE/zola build
