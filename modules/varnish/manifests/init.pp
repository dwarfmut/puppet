class varnish {

  class { 'varnish::config':
    varnish_address    => '192.168.0.1',
    varnish_port       => '80',
    varnishadm_address => '127.0.0.1',
    varnishadm_port    => '6130',
    storage            => 'malloc',
    storage_size       => '1GB',
  }

  # concat init files to construct environment
  concat {'/etc/varnish/backends.vcl':
    owner =>  'root',
    group =>  'root',
    mode  =>  '0644',
  }

}
