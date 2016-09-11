// Velocimetro de automovil

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}


class Auto {
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades.init(rawValue: Velocidades.Apagado.rawValue)!
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String) {
        var velocidadStr : String = ""
        
        if(self.velocidad.rawValue == Velocidades.Apagado.rawValue) {
            self.velocidad = Velocidades.VelocidadBaja
            velocidadStr = "Velocidad baja"
        } else {
            if(self.velocidad.rawValue == Velocidades.VelocidadBaja.rawValue) {
                self.velocidad = Velocidades.VelocidadMedia
                velocidadStr = "Velocidad media"
            } else {
                if(self.velocidad.rawValue == Velocidades.VelocidadMedia.rawValue) {
                    self.velocidad = Velocidades.VelocidadAlta
                    velocidadStr = "Velocidad alta"
                } else {
                    if(self.velocidad.rawValue == Velocidades.VelocidadAlta.rawValue) {
                        self.velocidad = Velocidades.VelocidadMedia
                        velocidadStr = "Velocidad media"
                    }
                }
            }
        }

        return (self.velocidad.rawValue, velocidadStr)
    }
}

var auto : Auto = Auto.init()
for i : Int in 0 ..< 20 {
    print("\(auto.cambioDeVelocidad())")
}
