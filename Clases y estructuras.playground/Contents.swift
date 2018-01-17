//Enumerados
enum TargetasValidas : String{
    case MasterCard
    case Visa
    case Chase
}

let targetaVisa = TargetasValidas.Visa

let targetaUsuario = "MasterCard"

switch targetaUsuario{
    case TargetasValidas.MasterCard.rawValue:
        print("Targeta valida")
    case TargetasValidas.Visa.rawValue:
        print("Targeta valida")
    default:
        print("Targeta invalida")
}

//Clases y Objetos
class Mesa{
    var material:String
    var forma:String
    var numPersonas:Int
    //Construc
    ///Constructor
    init(material:String, forma:String, numPersonas:Int){
        //Self es this
        self.material = material
        self.forma = forma
        self.numPersonas = numPersonas
    }
    func getMaterial() -> String{
        return self.material
    }
    func getForma() -> String{
        return self.forma
    }
    func descripcion()->String{
        return "Es una mesa de \(self.material) para \(self.numPersonas) personas de forma \(self.forma)"
    }
}

var mesa = Mesa(material:"Madera",forma:"circular",numPersonas:5)
print(mesa.descripcion())
var mesa1 = Mesa(material:"Vidrio",forma:"cuadrada",numPersonas:2)
print(mesa1.descripcion())

////Estructuras de Swift
//Similar a las clases con atributos y metodos
//Las estructuras no pueden heredar
struct Rectangulo{
    var x = 0.0
    var y = 0.0
    var ancho = 0.0
    var alto = 0.0
    func area() -> Double {
        return ancho * alto
    }
}
var rectangulo = Rectangulo()
rectangulo.area()

//Herencia en swift
class CircularTable:Mesa{
    override func getForma() -> String {
        return "circular"
    }
}

var table = CircularTable(material: "", forma: "", numPersonas: 0)
print(table.getForma())

//Polimorfismo - propiedad de que los objetos peudan cambiar de forma
//Como se haria normalmente
/*class MesaCuadrada{
    var area : Double
    init(area:Double){
        self.area = area
    }
    func calcularArea(ancho:Double, alto:Double) -> Double{
        return ancho*alto
    }
}
class MesaTriangular{
    var area : Double
    init(area:Double){
        self.area = area
    }
    func calcularArea(base:Double, altura:Double) -> Double{
        return base * altura / 2
    }
}*/
///Implementaci[on del polimorfismo
class MesaBasica{
    var area : Double
    init(area:Double){
        self.area = area
    }
    func calcularArea(arg0:Double, arg1:Double){
    }
}
//Se abstraen los componentes comunes y como cada funciona varia en cada clase que hereda se sobreescribe
class MesaCuadrada:MesaBasica{
    override func calcularArea(arg0: Double, arg1: Double){
        self.area = arg0*arg1
    }
}

class MesaTriangular : MesaBasica{
    override func calcularArea(arg0: Double, arg1: Double){
        self.area = arg0*arg1/2
    }
}









