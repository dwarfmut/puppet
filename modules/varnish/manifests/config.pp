class varnish::config (
  $varnish_address = {},
  $varnish_port = {},
  $varnishadm_address = {},
  $varnishadm_port = {},
  $storage = {},
  $storage_size = {}
) {

  file { '/etc/sysconfig/varnish':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content =>  template('varnish/varnish.conf.erb'),
  }
  
}
