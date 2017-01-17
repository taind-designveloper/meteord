apt-get install -y build-essential
apt-get install -y tcl8.5
apt-get install -y wget 
wget http://download.redis.io/releases/redis-stable.tar.gz
tar xzf redis-stable.tar.gz
(cd redis-stable && make && make install)
(cd redis-stable/utils && ./install_server.sh)
redis-cli config set notify-keyspace-events Ex


