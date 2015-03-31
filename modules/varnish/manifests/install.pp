class varnish::install {
  package {'varnish':
    ensure => '4.0.2-1.el7',
  }
}
