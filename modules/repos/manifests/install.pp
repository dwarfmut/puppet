class repos::install {
  package {'epel-release':
    ensure => 'installed',
  }
}
