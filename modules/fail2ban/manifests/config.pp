class fail2ban::config {
  file {'/etc/fail2ban/jail.conf':
    ensure => 'present',
    source => 'puppet:///modules/fail2ban/jail.conf',
  }
}
