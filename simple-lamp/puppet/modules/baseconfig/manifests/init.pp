class baseconfig {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update';
  }

  host { 'hostmachine':
    ip => '192.168.0.1';
  }

  package { ['htop', 'tree', 'unzip']:
    ensure => present;
  }

}
