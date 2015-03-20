class repos {

anchor { 'repos_begin' : } ->
class { 'repos::install' : } ->
anchor { 'repos_end' : }

}
