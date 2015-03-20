class htop::install {
  package { 'htop':
    ensure => 'installed',
  }
}
