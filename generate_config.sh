echo 'generate redis config - start'

set -x
cp /etc/redis/redis.conf /data/redis.conf
sed -i "s/^logfile \/var\/log\/redis\/redis-server.log/logfile \/data\/redis-server.log/g" /data/redis.conf
sed -i "s/^dir \/var\/lib\/redis/dir \/data/g" /data/redis.conf
sed -i "s/^daemonize yes/daemonize no/g" /data/redis.conf
sed -i "s/^bind 127.0.0.1/# bind 127.0.0.1/g" /data/redis.conf
sed -i "s/^pidfile .*pid$/pidfile \/data\/redis-server.pid/g" /data/redis.conf

echo 'generate redis config - done'
