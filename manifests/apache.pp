class profile::apache(
  $default_vhost = false,
  $apache_vhost_servers,
  $port = 80,
  $docroot = '/var/www/test',
) {
  class { '::apache':
    default_vhost => $default_vhost,
  }

  create_resources(::apache::vhost, $apache_vhost_servers)
}
