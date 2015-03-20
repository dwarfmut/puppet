# Desabilita warning na instalacao de pacotes
if versioncmp($::puppetversion,'3.6.1') >= 0 {

  Package {
    allow_virtual => false,
  }
}

hiera_include('classes')

node default {}
