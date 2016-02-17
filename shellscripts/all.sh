sudo apt-get update

echo "192.168.1.150 	master.hot.private 	master 	puppet 	puppetmaster" >> /etc/hosts
echo "192.168.1.151 	kibana.hot.private 			kibana" >> /etc/hosts
echo "192.168.1.152 	graylog.hot.private 		graylog" >> /etc/hosts
echo "192.168.1.153 	elasticsearch.hot.private 	elasticsearch" >> /etc/hosts
echo "192.168.1.154 	redis.hot.private 			redis" >> /etc/hosts
echo "192.168.1.155 	logstash.hot.private 		logstash" >> /etc/hosts
echo "192.168.1.156 	nginx.hot.private 			nginx" >> /etc/hosts

sudo sed -i "10iserver=puppet" /etc/puppet/puppet.conf
sudo puppet agent -t