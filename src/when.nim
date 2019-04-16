# when statements {{{
# 各条件はコンパイラによって評価されるため、定数式である必要がある。
# clang の #ifdef 構文と同様に、プラットフォーム固有のコードを書くことができる。
when system.hostOS == "windows":
  echo "Windows"
elif system.hostOS == "linux":
  echo "Linux"
elif system.hostOS == "macosx":
  echo "MacOS"
else:
  echo "unknown"
# }}}
