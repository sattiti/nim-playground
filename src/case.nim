from strutils import parseInt

# case statements {{{
echo "Enter a number:\n"
let n = parseInt(readLine(stdin))

case n:
  of 0: echo "zero"
  of 1: echo "one"
  of 2: echo "two"
  of 3: echo n, " is not between 0..2"
  else: discard # do nothing
#}}}
