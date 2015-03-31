class varnish {
  concat {'/etc/varnish/backends.vcl':
    owner =>  'root',
    group =>  'root',
    mode  =>  '0644',
  }
}
