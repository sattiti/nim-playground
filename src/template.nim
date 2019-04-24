import typetraits

# Template {{{
# 通常の方のほか、meta types と呼ばれるものが使える。
# untyped  template 引数の型解決を template 呼出し時には行わないようにする。
# typed    template 引数の型解決を template 呼出し時に行うようにする。
# typedesc template 引数として型名を指定させたい時に使う。
#
template echoBlock(blockName, x:untyped):untyped =
  echo "---", astToStr(blockName), "---"
  echo astToStr(x)
  echo "\n---"

echoBlock(BLOCK_NAME):
  var x:string
  x = "hello"
  echo x
# }}}
