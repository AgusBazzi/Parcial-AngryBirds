import Pajaros.*

class Isla {
	
	const pajaros
	
	method masFuertes() {
		return pajaros.filter { pajaro => pajaro.soyFuerte() }
	}
	
	method fuerza() {
		return self.masFuertes().sum { pajaro => pajaro.fuerza() }
	}
	
}
