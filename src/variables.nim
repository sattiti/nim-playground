# Variables{{{
# const
const
  z:int = 100
  plant:string = "earth"

echo z
echo plant

# let
# let works like var but after the initialization their value cannot change.
let
  i:int = 0
  j     = 0
echo i
echo j


# var
var
  x:int = 1
  y:int = 2
echo "x: ", x
echo "y: ", y

var myname:string = "Peter"
echo myname
# }}}
# Numbers {{{
echo 10
echo 1.2

# hex
echo 0xff00ee

# oct
echo 0o777
# }}}
# String {{{
# Character
echo 'a'

# String literals
echo "abc\tefg\n"

# Three quotes
echo """<doctype html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Hello world</title>
</head>
<body>
<h1>Hello world</h1>
</body>
</html>
"""

# Raw String
echo r"C:\Program\ Files"
# }}}
