node "kibana.hot.private" {
  class { kibana:
    install_path => "/opt/kibana"
  }
  include git
}



