define varnish::recv (
  $hosts,
  $backend,
) {
  
  concat::fragment { "${title}-recv":
    target  => '/etc/varnish/recvs.vcl',
    content =>  template('varnish/recvs.vcl.erb'),
    order   =>  '02',
  }

}
