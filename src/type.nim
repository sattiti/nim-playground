import typetraits
# proc{{{
# printType
proc printType[T](name:string, args:varargs[T]):void =
  echo "\n", name, ":"
  for a in args:
    echo "val: ", a
    echo "type: ", a.type.name
# }}}

# subrange{{{
block subrangeBk:
  type MySubRange = range[0..5]
  echo "\nsubrange:"
  echo MySubRange
  echo MySubRange.type.name
# }}}
# Ordinal types{{{
block ordinalbk:
  var x:int = 1
  var a:char = 'a'

  echo "\nOrdinal type:"
  echo "a: ", ord(a)

  echo "x: ", x

  inc(x, 2)
  echo "inc(x, 2): ", x

  echo "x: ", x
  dec(x, 1)
  echo "dec(x, 1): ", x

  echo "x: ", x
  echo "succ(x, 1): ", succ(x, 1)

  echo "x: ", x
  echo "pred(x, 1): ", pred(x, 1)
# }}}
# Type Define{{{
block typedefineBk:
  type
    myint   = int64
    myfloat = float64

  let
    a:myint   = 100
    b:myfloat = 200.000

  echo "\nType Define:"
  echo a, repr(a)
  echo b, repr(b)
# }}}
# Internal type representation {{{
block reprBk:
  echo "\nRepr:"
  const a:string = "abcdeg"
  const b:int64  = 100
  echo repr(a)
  echo repr(b)
# }}}
# Cast{{{
block castBk:
  echo "\nCast:"
  const x:int = 10
  const y:char = 'a'
  echo x.type.name, " -> int64: ", x.int64
  echo x.type.name, " -> float64: ", x.float64
  echo x.type.name, " -> string: ", $x
  echo y.type.name, " -> int: ", int(y)
# }}}
# float{{{
# float, float32, float64
# Common operators for int.
# + - * div mod
# < <= == != > >=
block floatBk:
  const
    x = 0.0'f   # float
    y = 0.1'f32 # float32
    z = 0.444'f64 # float64

  printType(x.type.name, x)
  printType(y.type.name, y)
  printType(z.type.name, z)
# }}}
# int{{{
# int int8 int16 int32 int64
# uint uint8 uint16 uint32 uint64

# Common operators for int.
# + - * div mod
# < <= == != > >=
block intBk:
  const
    r = 0     # int
    s = 0'i8  # int8
    t = 0'i16 # int16
    u = 0'i32 # int32
    v = 0'i64 # int64
    w = 2'u   # uint
    x = 0'u8  # uint8
    y = 0'u16 # uint16
    z = 0'u64 # uint64

  printType(r.type.name, r)
  printType(s.type.name, s)
  printType(t.type.name, t)
  printType(u.type.name, u)
  printType(v.type.name, v)
  printType(w.type.name, w)
  printType(x.type.name, x)
  printType(y.type.name, y)
  printType(z.type.name, z)
# }}}
# string{{{
# Common operator for string
# ==, &, $
block stringBk:
  const a = "hello"
  const b = "world"
  printType(a.type.name, a & b)
# }}}
# char {{{
# Common operators for char.
# ==, <, <=, >, >=
block charBk:
  const a = 'a'
  printType(a.type.name, a)
# }}}
# bool {{{
# Common operators for bool.
# not, and, or, xor,
# <, <=, >, >=, !=, ==
block boolBk:
  const a:bool = true
  const b:bool = false
  printType(a.type.name, a, b)
# }}}
