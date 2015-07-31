class reinaldo::varnish {
  include varnish

  varnish::config { 'reinaldo': 
    host    => '189.91.161.129', 
    port    => '80', 
    vhost   => 'veja.abril.com.br',
    url     => '/blog/reinaldo',
    cache   =>  {
      '/blog/reinaldo/materia/dilma-vs-aecio' => '30s',
      '/blog/reinaldo/materia/lula-foi-preso-e-esta-na-cadeia' => '120s',
    }
    nocache => [
      "/wp-admin",
      "/wp-login",
    ],
  }

}
