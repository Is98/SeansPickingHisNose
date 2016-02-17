class java7 {
 
  case $operatingsystem {
    'Ubuntu': { 
      package {'default-jdk':
        ensure => present,
        before => Package['default-jre'],
       }
    }
 
    'CentOS': {
      package {'java-1.7.0-openjdk':
        ensure => present,
      }
    }
  }  
}
