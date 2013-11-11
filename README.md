# Docker image for Redis

Specify a dir to use for data, logs and configuration

```bash
run -v /root/redisdata:/data tilljoel/redis /bin/bash -c ./generate_config.sh
run -d -v /root/redisdata:/data tilljoel/redis
```
