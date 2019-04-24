import typetraits

# distinct(明示) type {{{
# 既存のタイプを使い新しいタイプを生成する。
type
  Dollar = distinct float
  Euro   = distinct float

# float64 type を入れるとエラーになる。
# var d:Dollar = 1.2
# var e:Euro   = 1.1

# type を明示する必要がある。
var d:Dollar = Dollar(1.2)
var e:Euro   = Euro(1.1)

echo "TypeName: ", d.type.name
echo "Value:    ", cast[float](d)

echo "TypeName: ", e.type.name
echo "Value:    ", cast[flo](e)
# }}}
