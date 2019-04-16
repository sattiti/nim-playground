# Iterators{{{
# iterator と procedures の違い。
# for 文しか呼び出せない。
# 戻り値は return 文を書けず、yield 文を記述する。
# 再帰ができない。
# 善寳宣言ができない。
# 暗黙変数 result が宣言されない。
iterator range(a, b: int): int =
  var r = a
  while r <= b:
    yield r
    inc(r)

for i in range(1, 10):
  echo i
# }}}
