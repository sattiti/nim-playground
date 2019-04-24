# Import, except, from, include {{{
import typetraits
import procType except y
from procType import x

# include ファイルの中身を含める。
include tuples, variables
# }}}
# Modules {{{
# 各モジュールは特別なマジック定数 isMainModule を所持している。
# 該当するモジュール自体がコンパイルされる時点で true になる。
when isMainModule:
  # do something here ...
  echo 1

# }}}
