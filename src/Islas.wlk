import Pajaros.*
import Eventos.*

object islaPajaro {
	
	const pajaros = [red, bomb, chuck, terence, matilda]
	
	method masFuertes() {
		return pajaros.filter { pajaro => pajaro.soyFuerte() }
	}
	
	method fuerza() {
		return self.masFuertes().sum { pajaro => pajaro.fuerza() }
	}
	
	method queSuceda(unEvento) {
		unEvento.afectarA(pajaros)
	}
	
}

