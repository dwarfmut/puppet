class seya::vclconfig {

  include varnish

  varnish::backend { 'seya': host => '192.168.0.1', port => '80', vhost => 'seya.dwarfmut.com.br' }
  varnish::backend { 'andromeda': host => '192.168.0.3', port => '80', vhost => 'andromeda.dwarfmut.com.br' }

  varnish::recv { 'seya': hosts =>  'seya.dwarfmut.com.br', backend => 'seya' }
  varnish::recv { 'andromeda': hosts =>  'andromeda.dwarfmut.com.br', backend => 'andromeda' }

}
