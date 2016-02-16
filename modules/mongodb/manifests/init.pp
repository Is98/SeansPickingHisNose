class mongodb {
   
  Exec {
    path => [
      '/usr/local/bin',
      '/opt/local/bin',
      '/usr/bin',
      '/bin',
      '/sbin'],
    logoutput => true,
    timeout => 0,
  }
  
  exec {'import_mongodb_public_gpg_key':
    command => 'sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10',
    user    => root,
    before  => Exec['create_mongodb_source_list'],
  }
  
  exec {'create_mongodb_source_list':
    command => 'echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list',
    user    => root,
    before  => Exec['update_package_database_mongodb'],
  }
   
  exec {'update_package_database_mongodb':
    command => 'sudo apt-get update',  
    user    => root
    before  => Exec['install_stable_mongodb'],
  }

  exec {'install_stable_mongodb':
    command => 'sudo apt-get install mongodb-org',
    user    => root,
  }

}
