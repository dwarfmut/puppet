class varnish::install {

  package {'varnish':
    ensure => '4.0.3-1.el6',
  }

}
