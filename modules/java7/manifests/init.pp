class java7 {
 
  case $operatingsystem {
    'Ubuntu': { 
      package {'default-jdk':
        ensure => present,
       }
    }
 
    'CentOS': {
      package {'java-1.7.0-openjdk':
        ensure => present,
      }
    }
  }  
}
