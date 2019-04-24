import typetraits

# Pointer {{{
# ptr: alloc, dealloc, realloc
var g:int = 100

# ptr [type] type のアドレスを扱う型
var p1: ptr int = g.addr

# address を扱う型
var p2:pointer  = p1

echo "p1"
echo "repr:     ", repr p1
echo "TypeName: ", p1.type.name
echo "Value:    ", p1[]

echo "p2"
echo "repr:     ", repr p2
echo "TypeName: ", p2.type.name
echo "Value:    ", cast[ptr int](p2)[]

cast[ptr int](p2)[] = 200
echo "g:  ", g
echo "p1: ", p1[]
# }}}
# Reference {{{
# traced references:   ref (safe)

# ref は new を使い確保する。
var refStr: ref string = new(string)

# 参照するには REF_VAR[] を使う。
refStr[] = "hello world"
echo "repr:     ", repr refStr
echo "TypeName: ", refStr.type.name
echo "Value:    ", refStr[]
# }}}
