//Arrays
var array1 = [String]()
array1.append("Elemento 1")
array1.append("Elemento 2")

array1.insert("Elemento xd", at: 1)

for i in 0...array1.count-1{
    print(array1[i])
}

var empresas = ["Apple", "Google", "Samsung"]

for i in 0...empresas.count-1{
    print(empresas[i])
}
//Diccionarios
var empresaDicc = ["Apple":"iPhone X", "Samsung":"Galaxy 9", "Google":"Pixel 2"]
empresaDicc["Samsung"]
empresaDicc["Google"]
print(empresaDicc.isEmpty)

let keys = [String](empresaDicc.keys)
let values = [String](empresaDicc.values)

///Colecciones Set
var ajedrez : Set<String> = ["Rey", "Reina", "Caballo"]
var cartas : Set<String> = ["Rey", "Reina", "Joker"]

ajedrez.insert("Torre")

ajedrez.intersection(cartas)
ajedrez.union(cartas)

//Opcionales
//? denota la opcionalidad nula de la variable
var number : Int?
print(number)
number = 100
print(number)
print(number!)

var edad : Int?
edad = 16
if let edadU = edad{
    if edad! > 15{
        print("Puede ingresar")
    }else{
        print("No puede pasar")
    }
}else{
    print("El usuario no ha ingresado edad")
}

///Strings

var name = "David"
var apellido = "Ramirez"

name.lowercased() + " " + apellido
name.count

name == apellido
name == "David"

let numberString:String = String(10)
let stringNumber = Int("10")

