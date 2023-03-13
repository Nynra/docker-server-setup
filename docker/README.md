# Docker server
By default after installing docker will run as a single instance. If the instance should join or manage a swarm see the swarm section.

## Swarm
see the (docker swarm tutorial)[https://docs.docker.com/engine/swarm/swarm-tutorial/create-swarm/].

run `docker init swarm` on the first manager. Put the join command in a bash file and send it by wormhole to the worker machines. On the worker machines run the join command, thats it.