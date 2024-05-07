import wollok.game.*
import monstruos.*

class Pociones{
	var property position
	
	method aparecer(posicionMonstruo) {
		position = posicionMonstruo
		self.image()
		game.schedule(3000, { =>self.desaparecer()})
	}
	//LA IMAGEN CONVIENE TENERLA EN ESTA SUPER CLASE O EN CADA CLASE?
	method image() {}
	method desaparecer(){
		//si despues de un tiempo no colisiona con el personaje se borra
		game.removeVisual(self)
	}
	
	method esEncontrado(personaje){}
	
	method activar(){}
	//cada tipo delimita su efecto despues
}

class PocionInvisibilidad inherits Pociones {
	//te da invisibilidad por un par de segundos y vida al maximo
	override method image() = "pocion_invisivilidad.png"
	
	override method activar(){
		super()
		
	}
}

class PocionFuerza inherits Pociones {
	//te da poder extra
}

class PocionAturdimiento inherits Pociones {
	//deja quieto a los bichos que esten al rededor del personaje, tipo 3 posiciones al rededor
}