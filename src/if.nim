# if statements {{{
echo "What is your name?\n"

let name:string = readLine(stdin)

if name == "":
  echo "empty"
elif name == "name":
  echo "What is your name actually."
else:
  echo "Hi, ", name, "!\n"
#}}}
