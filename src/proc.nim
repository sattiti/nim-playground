# Forward declaration{{{
proc even(n:int):bool
proc odd(n:int):bool

proc odd(n:int):bool =
  assert(n >= 0)
  if n == 0: false
  else:
    n == 1 or even(n-1)

proc even(n:int):bool = 
  assert(n >= 0)
  if n == 1: false
  else: n == 0 or odd(n-1)

echo "\nForward Declaration:"

echo odd(10)
echo even(2)
# }}}
# Operator {{{
# 記号を `` で囲む
proc `====`(x, y:int):bool =
  echo "x: ", x
  echo "y: ", y
  return if x == y: true else: false

echo "\nOperator:"
echo 1 ==== 2
echo 1 ==== 1
# }}}
# Override Procedures {{{
proc toString(x:int):string =
  return $(x) & $"ccc"

proc toString(x:bool):string =
  if x:
    return "true"
  else:
    return "false"

echo "\nOverride Proc:"
echo toString(1)
echo toString(true)

# }}}
# Named Arguments {{{
proc say(name:string, age:int, msg:string):void =
  echo "Name: ", name
  echo "Age: ", age
  echo "Comment: ", msg

echo "\n名前付き引数:"
say(age=20, msg="hello world", name="Peter")
# }}}
# Default Values {{{
# The return value can be ignored implicitly,
# if the called proc/iterator has been declared with the discardable pragma
proc sum(x:int, y:int=2):int {.discardable.} =
  return x + y

echo "\n{.discardable.} | discard 戻り値:"
echo sum(1)
echo sum(1, 10)

# The return value must be used.
# Using discard statement to drop the return value.
discard sum(2, 4)
sum(3, 6)
# }}}
# Pointer Arguments {{{
proc sum2(x:var int, y:var int):int =
  echo "x: ", x
  echo "y: ", y
  x = x + 1
  y = y + 1
  return x + y

# a, b will be changed by sum2
var a, b = 2
echo "\nPointer Args:"
echo sum2(a, b)
echo "a: ", a # 3
echo "b: ", b # 3
# }}}
# Variadic Arguments{{{
proc echoArgs(args: varargs[int]) =
  echo args

echo "\n可変長引数:"
echoArgs(1, 2)
echoArgs(9, 8, 7, 6)

# }}}
# Result Variable{{{
# result は暗黙に宣言される。return で戻り値を明示しない場合、result の中身を返す。
echo "\nResult Variable:"
proc calc(x: varargs[int]):int =
  for i in x:
    if i < 0: return
    result = result + i

echo calc(1, 2, 3) # 6 戻り値は result の中身。
echo calc(3, 5)    # 8 戻り値は result の中身。
echo calc(-1, -2)  # 0 return によって戻される。

proc calc2(x: varargs[int]):int =
  # 同じ result という名で宣言すると上書きされて通常の変数になる。
  result = 1
  for i in x:
    if i < 0: return
    result = result + i

echo calc2(1, 2, 3) # 7 戻り値は result の中身。
echo calc2(-1, -2)  # 1 return によって戻される。
# }}}
# No name proc{{{
echo "\nNo Name proc:"
echo (proc(x:int):bool = return x > 0)(1)
# }}}
