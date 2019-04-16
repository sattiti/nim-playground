# block statements {{{
block block1:
  while true:
    echo "looping"
    break
  echo "still in block1"

block block2:
  echo "Entering block2"
  while true:
    echo "looping"
    break block2
  echo "still in block2"

block block3:
  while true:
    let x = readLine(stdin)
    if x == "":
      echo "still in block3"
      continue
    else:
      echo x
      break block3

echo "exit all blocks."
#}}}
