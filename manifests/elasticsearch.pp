# Config Node
node /seya/ {
  anchor { 'elasticsearch_begin' : } ->
  class  { 'elasticsearch::install': } ->
  anchor { 'elasticsearch_end' : }
}
