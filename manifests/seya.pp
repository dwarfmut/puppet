# Config Node
node /seya/ {
  anchor { 'seya_begin' : } ->
  class  { 'seya::vclconfig': } ->
  anchor { 'seya_end' : }
}
