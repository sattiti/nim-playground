# for statements{{{
block forBlock:
  echo "For Block"
  var i = 0
  for i in 1..10:
    echo i

  for i in countup(10, 20):
    echo i

  for i in 20..30:
    echo i

  var str:string = "hello world"
  for i in 0..<str.len:
    echo i, ": ", str[i]

  # pairs
  echo "pairs"
  for i, k in ["a", "b", "c"].pairs:
    echo i, ": ", k
# }}}
# while statements {{{
block whileBlock:
  echo "While Block"
  var i       =  0
  const total = 10
  while i < total:
    echo i
    inc(i) # i=i+1
#}}}
