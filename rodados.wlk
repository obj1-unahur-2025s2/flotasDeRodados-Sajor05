class Corsa {
    const property color
    method capacidad() = 4
    method velocidadMaxima() = 150
    method peso() = 1300
}

class Kwid{
    var tieneTanqueDeGas =  true                                          
    method agregarTanque(){
        tieneTanqueDeGas = true
    }
    method sacarTanque(){
        tieneTanqueDeGas = false
    } 
    method tieneTanqueDeGas() = tieneTanqueDeGas
    method capacidad() = if(tieneTanqueDeGas) 3 else 4
    method velocidadMaxima() = if(tieneTanqueDeGas) 120 else 110
    method peso() = if(tieneTanqueDeGas) 1350 else 1200
    method color() = "Azul"
}

class AutoEspecial{
    const property capacidad
    const property velocidadMaxima
    const property peso
    const property color
}

class Dependencia {
    const property flota = #{}
    var property empleados
    method agregarAFlota(rodado){
        flota.add(rodado)
    }
    method quitarDeLaFlota(rodado){
        flota.remove(rodado)
    }
    method pesoTotalFlota() = flota.sum({unRodado => unRodado.peso()})
    method estaBienEquipado() = flota.size() >= 3 && flota.all({unRodado => unRodado.velocidadMaxima() >= 100})
    method capacidadTotalEnColor(color){
        flota.filter({unRodado => unRodado.color() == color}).sum({unRodado => unRodado.capacidad()})  
       }
    method colorDelRodadoMasRapido() = self.rodadoMasRapido().color()
    method rodadoMasRapido() = flota.max({unRodado => unRodado.velocidadMaxima()})
    method capacidadTotal() = flota.sum({unRodado => unRodado. })
    method esGrande() = empleados.
} //Nos perdimos :(

object traffic {
  var property interior = popular
  var property motor = pulenta

  method capacidad() = interior.capacidad()
  method velocidadMaxima() = motor.velocidadMaxima()
  method peso() = 4000 + interior.peso() + motor.peso()
  method color() = "Blanco"
}
  /*-----------------------
  -- I N T E R I O R E S --
  ------------------------*/
object comodo {
  method capacidad() = 5
  method peso() = 700
}

object popular {
  method capacidad() = 12
  method peso() = 1000
}
/*-------------------
  -- M O T O R E S --
  ------------------*/
object pulenta {
 method peso() = 800
 method velocidadMaxima() = 130
}

object bataton {
  method peso() = 500
  method velocidadMaxima() = 80
}