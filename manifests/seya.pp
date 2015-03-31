# Config Node
node /seya/ {
  anchor { 'seya_begin' : } ->
  class  { 'seya::varnish': } ->
  anchor { 'seya_end' : }
}
