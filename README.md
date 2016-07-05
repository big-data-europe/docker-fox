# Description

- fox project: http://aksw.org/Projects/FOX.html
- fox githup repo: https://github.com/AKSW/fox
- prebuilt container: https://hub.docker.com/r/earthquakesan/docker-fox/

## run a fox container

    docker run -d -e XMX=8G -e LNG=en --name fox -p 4444:4444 earthquakesan/fox

To configure fox at runtime use the following environment variables, set them `-e <Variable>=<Value>[-e ...[]]

- `XMX`: configures the jvm memory settings, default `8G`
- `LNG`: sets the language to be trained, currently `en` `de` are supported, default `de`
