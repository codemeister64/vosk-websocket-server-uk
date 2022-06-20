#!/bin/bash

set -e
set -x

for kind in uk; do
    docker build --file Dockerfile.kaldi-${kind} --tag ghcr.io/codemeister64/vosk-websocket-server-${kind}:latest .
done

for kind in uk; do
    docker push ghcr.io/codemeister64/vosk-websocket-server-${kind}:latest
done
