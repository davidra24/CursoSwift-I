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
