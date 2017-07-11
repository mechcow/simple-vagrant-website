# new run stage
stage { 'pre':
  before => Stage['main']
}

# baseconfig module
class { 'baseconfig':
  stage => 'pre'
}

# default permissions
File {
  owner => 'root',
  group => 'root',
  mode  => '0644',
}

include baseconfig, apache, apache_vhosts, mysql, php
