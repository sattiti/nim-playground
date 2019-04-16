import typetraits
# Varargs {{{
# openarray に似ているが、多様な引数をプロシージャに渡すことができる。
# コンパイル時に自動的に配列に変換される。
block varargsBk:
  echo "\nVarargs:"

  proc say(args:varargs[string, `$`]):void =
    for s in items(args):
      echo "type:  ", s.type.name
      echo "value: ", s

  say("abc", "def", 1243, "jkl", [1, 2, 3])
# }}}
# OpenArray {{{
# Openarrays can only be used for parameters.
# Can pass an array or a seq only?
# openarray はネストができない。
block openAryBk:
  echo "\nOpenArray:"

  var
    fruits:seq[string]
    captials:array[3, string]

  captials = ["NewYork", "London", "Paris"]
  fruits.add("apple")
  fruits.add("banana")

  proc openArySize(oa:openarray[string]): int =
    return oa.len

  echo openArySize(fruits) == 2
  echo openArySize(captials) == 3

# }}}
# Sequences {{{
block seqBk:
  echo "\nSequences:"

# define an int array(cap=10)
  var ary:seq[int]
  echo ary

  var fruit:seq[string]
  fruit = @["apple", "orange", "banana"]
  for i, v in pairs(@fruit):
    echo "Index: ", i
    echo "Value: ", v

  echo "The lowest index of fruit is: ", low(fruit)
  echo "The highest index of fruit is: ", high(fruit)
# }}}
# Array {{{
block aryBk:
  echo "\nArray:"

# define an int array(cap=10)
  var ary:array[0..9, int]
  echo ary

  var fruit:array[3, string]
  echo fruit
  fruit[0] = "apple"
  fruit[1] = "banana"
  fruit[2] = "orange"
  echo "Values of fruit: ", fruit
  echo "The lowest index of fruit is: ", low(fruit)
  echo "The highest index of fruit is: ", high(fruit)
# }}}
