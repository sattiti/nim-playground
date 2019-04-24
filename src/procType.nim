import typetraits

# Proc type {{{
proc x*():void =
  echo 1
proc y*():void =
  echo 2

proc eachItem(x:int) = echo x

proc each(f: proc(x:int)) =
  const data = [1, 2, 3, 4, 5, 6]
  for d in items(data):
    f(d)

each(eachItem)
# }}}
