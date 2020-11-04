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
	
	method atacarIslaCerdito() {
		pajaros.forEach { pajaro => islaCerdito.serAtacadaPor(pajaro) }
	}
	
	method recuperamosLosHuevos() {
		return islaCerdito.meDerrotaron()
	}
}

object islaCerdito {
	
	const obstaculos = []
	
	method serAtacadaPor(unPajaro) {
		const primerObstaculo = obstaculos.head()
		if (unPajaro.puedoDerribar(primerObstaculo)){
			self.perderObstaculo(primerObstaculo)
		}
	}
	
	method perderObstaculo(unObstaculo) {
		obstaculos.remove(unObstaculo)
	}
	
	method meDerrotaron() {
		return obstaculos.isEmpty()
	}
	
}

