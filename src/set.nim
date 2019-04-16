import typetraits
# Set{{{
# set は以下の型のみ使用できる。
# int8-int16
# uint8-byte-uint16
# char
# enum
# | operation      | meaning                                          |
# |----------------+--------------------------------------------------|
# | A + B          | union of two sets                                |
# | A * B          | intersection of two sets                         |
# | A - B          | difference of two sets (A without B's elements)  |
# | A == B         | set equality                                     |
# | A <= B         | subset relation (A is subset of B or equal to B) |
# | A < B          | strong subset relation (A is a real subset of B) |
# | e in A         | set membership (A contains element e)            |
# | e notin A      | A does not contain element e                     |
# | contains(A, e) | A contains element e                             |
# | card(A)        | the cardinality of A (number of elements in A)   |
# | incl(A, elem)  | same as A = A + {elem}                           |
# | excl(A, elem)  | same as A = A - {elem}                           |
type CharSet = set[char]
var x:CharSet = {'a'..'z', '0'..'9'}
echo "\nSets:"
echo x
# }}}
