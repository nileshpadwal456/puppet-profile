class profile::apache(
 
 Boolean $default_vhost = false,
 Hash $apache_vhost_servers,

# default_vhost => true,
  ){

  class{'::apache':
  
  default_vhost => $default_vhost,

  }


 create_resources(::apache::vhost, $apache_vhost_servers)


}
