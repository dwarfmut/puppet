class fail2ban {
  anchor {'fail2ban_begin':} ->
  class {'fail2ban::install':} -> 
  class {'fail2ban::config':} -> 
  anchor {'fail2ban_end':} 
}
