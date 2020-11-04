import Pajaros.*

object sesionManejoDeIra {
	
	method afectarA(unosPajaros) {
		unosPajaros.forEach { pajaro => pajaro.tranquilizarse() }
	}
	
}

class EventoMolesto {
	
	method enojarA(unosPajaros) {
		unosPajaros.forEach { pajaro => pajaro.enojarse() }	
	}
}

class InvasionCerditos inherits EventoMolesto {
	
	const cantidadCerditos
	
	method afectarA(unosPajaros) {
		const cantidadDeVecesQueSeEnojan = cantidadCerditos / 100
		cantidadDeVecesQueSeEnojan.times { _ => self.enojarA(unosPajaros) } 
	}
	
}

class FiestaSorpresa inherits EventoMolesto {
	
	const homenajeados
	
	method afectarA(unosPajaros) {
		self.enojarA(homenajeados)
	}
}

class EventosDesafortunados {
	 
	const eventos
	
	method afectarA(unosPajaros) {
		eventos.forEach { evento => evento.afectarA(unosPajaros) }
	}
}