# Backend.pp

define varnish::backend (
  $host,
  $port,
  $vhost,
  $connect_timeout = "90s",
  $first_byte_timeout = "90s",
  $between_bytes_timeout = "90s",
) {

  $backendsfile = '/etc/varnish/backends.vcl'

  concat { $backendsfile:
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  concat::fragment { "$title":
    target  => "$backendsfile",
    content => template('varnish/backends.vcl.erb'),
    order   =>  '10',
  }

}
