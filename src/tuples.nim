import typetraits
import os

# Tuples {{{
type Person = tuple[name: string, age: int]

var person:Person = (name: "Peter", age: 30)

echo person.name
echo person[0]

echo person.age
echo person[1]

var building: tuple[street: string, number: int]
building = ("Rue del Percebe", 13)
echo building.street

# The following works because the field names and types are the same.
var teacher: tuple[name: string, age: int] = ("Mark", 42)
person = teacher


const path:string    = "/usr/local/nim/nimc.html"
let (dir, name, ext) = splitFile(path)

echo dir
echo name
echo ext
# }}}
