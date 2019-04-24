# Pragma {{{
# コンパイル時にコンパイラに様々な指示を与えることができる。
# proc NAME(arg1, arg2, ..):TYPE {.PRAGMA.} =
#   ...
#
# {.discardable.}  discard なしでもエラーではなくなる。
# {.noSideEffect.}
# {.compileTime.}
# {.noReturn.}
# {.acyclic.}
# {.final.}
# {.shallow.}
# {.pure.}
# {.asmNoStackFrame.}
# {.error.}
# {.fatal.}
# {.warning.}
# {.hint.}
# {.line.}
# {.linearScanEnd.}
# {.computedGoto.}
# {.unroll.}
# {.immediate.}
# {.checks: on|off.}
# {.boundChecks: on|off.}
# {.overflowChecks: on|off.}
# {.nilChecks: on|off.}
# {.assertions: on|off.}
# {.warnings: on|off.}
# {.hints: on|off.}
# {.optimization: none|speed|size.}
# {.patterns: on|off.}
# {.callconv:.}
# {.push.}
# {.pop.}
# {.register.}
# {.global.}
# {.pragma.}
# {.used.}
# {.experimental.}
# {.bitsize.}
# {.volatile.}
# {.noDecl.}
# {.header: "FILE".}
# {.importc: "FILE".}
# {.incompleteStruct.}
# {.compile: "".}
# {.passC: "".}
# {.passL: "".}
# {.emit: "".}
# {.link: "".}
# }}}
