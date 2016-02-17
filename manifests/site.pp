node "master.hot.private" {
  include master
}

node "kibana.hot.private" {
  #	class { kibana:
  #	  install_path => "/opt/kibana"
  #	}
  
  include kibana4
  include git
}

node "graylog.hot.private" {
  include java7
  include mongodb
  include graylog
}

node "elasticsearch.hot.private" {
  include elasticsearch
}

node "redis.hot.private" {
  include redis
}

node "logstash.hot.private" {
  include logstash
}

node "nginx.hot.private" {
  include nginx
}

