# Config Node
node /v-veja-varnish-app/ {
  anchor { 'veja_begin' : } ->
  class  { 'veja::varnish': } ->
  anchor { 'veja_end' : }
}
