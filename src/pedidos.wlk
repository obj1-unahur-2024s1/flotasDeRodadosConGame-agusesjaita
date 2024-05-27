class PedidoDeTranslado {
	var property distancia = 0
	var property tiempoMaximo = 0
	var property pasajeros = 0
	const property coloresRechazados = []
	
	method agregarColor(color) = coloresRechazados.add(color)
	
	method agregarColores(lista) = coloresRechazados.addAll(lista)
	
	method velocidadRequerida() = distancia / tiempoMaximo
	
	method puedeSatisfacerElPedido(rodado) {
		return ((rodado.velocidadMaxima()) - self.velocidadRequerida() >= 10 or 
		(self.velocidadRequerida() - rodado.velocidadMaxima() >= 10)) and
		rodado.capacidad() >= pasajeros and 
		not	coloresRechazados.contains(rodado.color())
		}
	
	method acelerar() {tiempoMaximo = tiempoMaximo - 1}
	
	method relajar() {tiempoMaximo = tiempoMaximo + 1}
	
	
}