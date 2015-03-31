# Backend.pp

define varnish::backend (
  $host,
  $port,
  $vhost,
  $connect_timeout = "90s",
  $first_byte_timeout = "90s",
  $between_bytes_timeout = "90s",
) {

  concat {"/etc/varnish/${title}.vcl":
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  concat::fragment {"${title}":
    target  => "/etc/varnish/${title}",
    content => template('varnish/backends.vcl.erb'),
    order   =>  '02',
  }

}
