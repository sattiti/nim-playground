import typetraits
# object {{{
type
  Mail = ref object of RootObj
    address: string

  # 慣例として RootObj を使い extends.
  User = ref object of RootObj
    name*: string # the * means that name is accessiable from other modules.
    age: int
    mailAddr: Mail

  Student = ref object of User # Student inherits from User
    id:int


var
  u:User = new(User)
  m:Mail  = new(Mail)
  s:Student = Student(
    name: "Mary",
    age: 21,
    mailAddr: Mail(address: "mary@example.com"),
    id: 1
  )

m.address = "john@example.com"

u.name     = "john"
u.age      = 20
u.mailAddr = m

echo repr(u)
echo u[]

echo repr(s)
echo s[]
# }}}
