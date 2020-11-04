class Pajaro {
	
	var ira
	
	method fuerza() {
		return ira * 2
	}
	
	method enojarse() {
		ira = ira * 2
	}
	
	method soyFuerte() {
		return self.fuerza() > 50
	}
	
}

class Rencoroso inherits Pajaro {
	
	var cantidadVecesQueMeEnoje = 0
	
	override method fuerza() {
		return ira * cantidadVecesQueMeEnoje
	}
	
	override method enojarse() {
		super()
		cantidadVecesQueMeEnoje ++
	}
}

object red inherits Rencoroso {
	
	override method fuerza() {
		return super() * 10
	}
}

object bomb inherits Pajaro {
	
	var property topeMaximo = 9000
	
	override method fuerza() {
		return super().min(topeMaximo)
	}
}

object chuck inherits Pajaro {
	
	var velocidad
	
	override method fuerza() {
		return 150 + 5 * (velocidad - 80).max(0)
	}
	
	override method enojarse() {
		velocidad = velocidad * 2
	}
}

object terence inherits Rencoroso {
	
	var property multiplicador = 5
	
	override method fuerza() {
		return super() * multiplicador
	}
	
}

object matilda inherits Pajaro {
	
	const huevos = []
	
	override method fuerza() {
		return super() + huevos.sum { huevo => huevo.fuerza() } 
	}
	
	override method enojarse() {
		huevos.add { new Huevo (peso = 2) }
	}
	
}

class Huevo {
	
	const peso
	
	method fuerza() {
		return peso
	}
}
