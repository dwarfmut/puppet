class varnish::config (
  $varnish_address = {},
  $varnish_port = {},
  $varnishadm_address = {},
  $varnishadm_port = {},
  $storage = {},
  $storagesize = {}
) {

  varnish_address    => $varnish_address,
  varnish_port       => $varnish_port,
  varnishadm_address => $varnishadm_address,
  varnishadm_port    => $varnishadm_port,
  storage            => $storage,
  storagesize        => $storagesize,

  file { '/etc/sysconfig/varnish':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content =>  template('varnish/varnish.conf.erb'),
  }
  
}
