FROM ubuntu:14.04.3

RUN apt-get update \ 
&& apt-get install -y redis-server \ 
&& mkdir -p /var/run/redis \ 
&& rm -rf /var/lib/{apt,cache,log}/

COPY etc /etc

EXPOSE 6379

#CMD exec /usr/bin/redis-server /etc/redis/redis.conf --bind 0.0.0.0 --daemonize no --maxmemory $REDIS_MAX_MEM --requirepass $REDIS_PASSWORD
CMD exec /usr/bin/redis-server /etc/redis/redis.conf