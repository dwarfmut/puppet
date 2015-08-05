# Backend.pp
define varnish::config (
  $host,
  $port,
  $vhost,
  $url,
  $cache,
  $nocache,
 
) {

  file { "/etc/varnish/${title}-site.vcl":
    content => template("varnish/sites.vcl.erb"),
    owner   => root,
    group   => root,
  }

}
