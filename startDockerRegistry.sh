#/usr/bin/env bash
docker run -d --restart=always --name registry -e REGISTRY_HTTP_ADDR=0.0.0.0:5000 -v /app/docker-registry:/var/lib/registry -p 5000:5000 registry:2