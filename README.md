# Docker image for Redis

Specify a dir to use for data, logs and configuration

```bash
sudo su
mkdir -p /root/redisdata
docker run -v /root/redisdata:/data tilljoel/redis /bin/bash -c ./generate_config.sh
docker run -d -v /root/redisdata:/data tilljoel/redis
```
