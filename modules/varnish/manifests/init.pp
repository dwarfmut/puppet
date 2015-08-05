class varnish {
  
  # concat init files to construct environment
  concat {"'/etc/varnish/main.vcl":
    owner =>  'root',
    group =>  'root',
    mode  =>  '0644',
  }

}
