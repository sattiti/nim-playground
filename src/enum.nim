import typetraits

# Enumeration {{{
type Direction = enum
  east  = 0,
  south = 1,
  west  = 2,
  north = 3

for d in Direction:
  echo "type:  ", d.type.name
  echo "value: ", d
# }}}
