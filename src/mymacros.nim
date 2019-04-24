import macros, typetraits

# Macros {{{
macro myMacro():untyped =
  return nnkCommand.newTree(
    newIdentNode("echo"),
    newLit("hello")
  )

myMacro()
# }}}
