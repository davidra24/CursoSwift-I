//: Playground - noun: a place where people can play

var str : String = "Hola mundo"
//if
var a = 1
var b = 2
if a==b{
    print("Son iguales")
}else{
    print("No son iguales")
}
var i = 0

//While
while i<=10{
    print(i)
    i = i + 1
}
//For
for i in 1...4{
    print(i)
}
//For undererscore
for _ in 1...10{
    print("Holaxd")
}
//switch
var diaSemana = "Martes"
switch diaSemana{
 case "jueves":
    print("Hoy es Jueves")
case "martes":
    print("Hoy es martes")
default:
    print("No hay dia seleccionado")
}
