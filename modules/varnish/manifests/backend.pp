# Backend.pp

define varnish::backend (
  $host,
  $port,
  $vhost,
  $connect_timeout = "90s",
  $first_byte_timeout = "90s",
  $between_bytes_timeout = "90s",
) {

  $varnishincludes = '/etc/varnish/includes'

  define includefile {
    concat {"$varnishincludes/${title}.vcl}":
      owner => 'root',
      group => 'root',
      mode  => '0444',
    }
  }

  includefile { ['backends'] }

  concat::fragment { "$title-backend":
    target  => "$varnishincludes/backend.vcl",
    content => template('varnish/backends.vcl.erb'),
    order   =>  '10',
  }

}
