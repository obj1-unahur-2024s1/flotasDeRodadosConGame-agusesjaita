import rodados.*
import pedidos.*

class Dependencia {
	const rodados = []
	var property empleados = 0
	const property pedidos = []
	
	method agregarAFlota(rodado) = rodados.add(rodado)
	
	method agregarFlota(rodadoss) = rodados.addAll(rodadoss)
	
	method quitarDeFlota(rodado) = rodados.remove(rodado)
	
	method pesoTotalFlota() = rodados.sum({auto => auto.peso()})
	
	method estaBienEquipada() = rodados.all({auto => auto.velocidadMaxima() >= 100}) and rodados.size() >= 3
 
	method capacidadTotalEnColor(color) = rodados.filter({auto => auto.color() == color}).sum({auto => auto.capacidad()})  

	method colorDelRodadoMasRapido() = rodados.max({auto => auto.velocidadMaxima()}).color()
	
	method capacidadFaltante() = 0.max(empleados - rodados.sum({auto => auto.capacidad()}))
	
	method esGrande() = empleados >= 40 and rodados.size() >= 5
	
	method quitarPedido(pedido) = pedidos.remove(pedido)
	
	method agregarPedido(pedido) = pedidos.add(pedido)
	
	method totalPasajerosPedidos() = pedidos.sum({pedido => pedido.pasajeros()})
	
	method pedidosSinSatisfacer() = rodados.map({rodado => pedidos.filter({pedido => not pedido.puedeSatisfacerElPedido(rodado)})}).flatten()
	
	method esColorIncompatibleComun(color) = pedidos.all({pedido => pedido.coloresRechazados().contains(color)})
	
	method pedidosRelajados() = pedidos.forEach({pedido => pedido.relajar()})
}

