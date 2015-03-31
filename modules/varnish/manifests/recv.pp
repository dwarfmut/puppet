class varnish::recv (
  $hosts,
  $backend,
) {
  
  concat::fragment { "${title}":
    target  => '/etc/varnish/recvs.vcl',
    content =>  template('varnish/recvs.vcl.erb'),
    order   =>  '02',
  }

}
