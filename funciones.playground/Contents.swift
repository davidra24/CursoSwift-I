//: Playground - noun: a place where people can play
//Funciones

func funcionSinParametro(){
    
}
func funcionImprimir(param0 : String){
    print(param0)
}

funcionImprimir(param0: "Hola mundo")

var appleTv = 149.0
var appleTvIva = appleTv * 0.15
let appleTvPrecio = appleTv + appleTvIva

funcionImprimir(param0: String(appleTvPrecio))

func calcularIva(precio:Double) -> Double{
    let iva = 0.15
    let precioTotal = precio + (precio * iva)
    return precioTotal
}

funcionImprimir(param0 : String(calcularIva(precio: 149.0)))
funcionImprimir(param0 : String(calcularIva(precio: 258)))

//function types
func suma(a:Int, b:Int) -> Int{
    return a + b
}
func funcionCalc(a:Int, b:Int, operacion:(Int, Int)->Int) -> Int{
    return operacion(a, b)
}

var tipodeFuncion : (Int, Int, (Int,Int)->Int) -> Int = funcionCalc

var res = funcionCalc(a: 5, b: 6, operacion: suma(a:b:))
var res2 = funcionCalc(a: 8, b: 4, operacion: suma(a:b:))

funcionImprimir(param0: String(res))
funcionImprimir(param0: String(res2))

//Closures
///Funcion clousure (anonima)
var multiplicar : (Int, Int) -> Int
//Crear clousure
multiplicar = {(a:Int, b:Int)->Int in
    //El return es implicito
    a * b
}
var multiplicacion : (Int, Int) -> Int
multiplicacion = {
    //Signo pesos agarra los parametros como un vector
    $0 * $1
}
multiplicar(5,6)
funcionImprimir(param0: String(multiplicar(5,6)))
multiplicacion(8,6)
funcionImprimir(param0: String(multiplicacion(8,6)))

//Cloussures complejos
func traductor(saludo : String) -> (String) -> String{
    //Retorna closure
    return{
        (nombre:String) -> String in return saludo + nombre
    }
}
//Se llama al clouster y se le pasa el patrametro principal
//Internamente crea funciones segun ciertas condiciones
//por ejemplo ahora que se crean las funciones ingles y aleman
//Las cuales ingresan el parametro de nombre que se usara en closter
//pero a su vez invoca traductor, donde se le envia el patramtro del saludo
//Es una fabrica de funciones para seleccionar entre uno u otro valor
//se puede usar para hacer peticiones al servidor
var saludoIngles = traductor(saludo:"Hello")
var saludoAleman = traductor(saludo: "Guten tag")
//Se lalma la funcion saludo dependiendo de la variable que se crea en el closure
funcionImprimir(param0 : saludoIngles("David"))
funcionImprimir(param0 : saludoAleman("Pepe"))


