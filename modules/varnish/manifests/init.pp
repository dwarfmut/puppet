class varnish {
  
  file { "/etc/varnish/main.vcl":
    content => template("varnish/main.vcl.erb"),
    owner   => root,
    group   => root,
  }

  concat {"/etc/varnish/default.vcl":
    owner  =>  'root',
    group  =>  'root',
    mode   =>  '0644',
  }

  concat::fragment { "default":
    target  => "/etc/varnish/default.vcl",
    content => "vcl 4.0;\nimport std;\n\ninclude \"/etc/varnish/main.vcl\";\n",
    order   => 1,
  }

  include varnish::install  

}
