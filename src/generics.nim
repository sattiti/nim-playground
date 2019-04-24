import typetraits

# Generics {{{
proc s[T1, T2](a:T1, b:T2):void =
  echo "a: ", a.type.name
  echo "b: ", b.type.name

var
  x:int   = 1
  y:float = 2.0

# 明示呼出し
s[int, float](x, y)

# 暗示呼出し
s(x, y)


type
  Member[T1, T2] = ref object of RootObj
    x:T1
    y:T2

var o1 = Member[int, float]()
echo "o1.x typeName: ", o1.x.type.name
echo "o1.y typeName: ", o1.y.type.name

var o2 = Member[string, int](x: "aaa", y: 2)
echo "o2.x typeName: ", o2.x.type.name
echo "o2.y typeName: ", o2.y.type.name
# }}}
