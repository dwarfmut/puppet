# Backend.pp
define varnish::backend (
  $host,
  $port,
  $vhost,
  $connect_timeout = "90s",
  $first_byte_timeout = "90s",
  $between_bytes_timeout = "90s",
) {

  concat::fragment { "${title}":
    target  => '/etc/varnish/backends.vcl',
    content => template('varnish/backends.vcl.erb'),
    order   =>  '02',
  }

}
