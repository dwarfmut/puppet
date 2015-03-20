class htop {

anchor { 'htop_begin' : } ->
class { 'htop::install' : } ->
anchor { 'htop_end' : }

}
