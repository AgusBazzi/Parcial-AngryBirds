class Pared {
	
	const ancho
	
	method resistencia() {
		return ancho * self.resistenciaMaterial()
	}
	
	method resistenciaMaterial()
	
}

object paredVidrio inherits Pared {
	
	override method resistenciaMaterial() {
		return 10
	}
}

object paredMadera inherits Pared {
	
	override method resistenciaMaterial() {
		return 25
	}
}

object paredPiedra inherits Pared {
	
	override method resistenciaMaterial() {
		return 50
	}
}

object cerditoObrero {
	
	method resistencia() {
		return 50
	}
}

class CerditoArmado {
	
	const resistenciaArma

	method resistencia() {
		return 10 * resistenciaArma
	}
}