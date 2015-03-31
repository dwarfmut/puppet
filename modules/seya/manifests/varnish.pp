class seya::varnish {

  varnish::backend { 'seya_dwarfmut':
    host  => '192.168.0.1', 
    port  => '80',
    vhost =>  'seya.dwarfmut.com.br',
  }

}
