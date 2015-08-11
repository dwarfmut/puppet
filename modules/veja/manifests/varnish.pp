class veja::varnish {

  varnish::config { 'reinaldo': 
    host    => '189.91.161.129', 
    port    => '80', 
    vhost   => 'veja.abril.com.br',
    url     => '/blog/reinaldo',
    cache   =>  [
      {
      url  => '/blog/reinaldo/materia/dilma-vs-aecio',
      time => '120',
      },
    ],
    nocache => [
      '/api/veja',
      '/rota/de/teste',
      '/testand/modulo/puppet',
    ],
  }

  varnish::config {'site':
    host  => '127.0.0.1',
    port  => '80',
    vhost => 'veja.abril.com.br',
  }

}
