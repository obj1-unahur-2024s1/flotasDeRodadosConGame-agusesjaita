import wollok.game.*

class ChevroletCorsa {
	var property color = null
	
	method capacidad() = 4
	
	method velocidadMaxima() = 150
	
	method peso() = 1300	
	
	method position()

}

class RenaultKwid {
	var property tieneTanque = false
	
	method color() = "azul"
	
	method capacidad() = if (tieneTanque) 3 else 4	
	
	method velocidadMaxima() = if (tieneTanque) 120 else 110 

	method peso() = 1200 + if (tieneTanque) 150 else 0
}

object trafic {
	
	method color() = "blanco"
	
	method capacidad() = interior.capacidad()
	
	method velocidadMaxima() = motor.velocidadMaxima()
	
	method peso() = 4000 + motor.peso() + interior.peso()
}
object motor {
	var property tipo = null

	method peso() = if (tipo == "pulenta") 800 else 500
	
	method velocidadMaxima() = if (tipo == "pulenta") 130 else 80
	

}
object interior {
	var property tipo = null
	
	method capacidad() = if (tipo == "comodo") 5 else 12
	
	method peso() = if (tipo == "comodo") 700 else 1000
}

class AutosEspeciales {
	var property peso = 0
	var property color = null
	var property capacidad = 0
	var property velocidadMaxima = 0
}