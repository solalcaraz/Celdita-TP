import wollok.game.*
import pocion.*

//dañan a tomas con esAtacado(daño)
class Monstruos {
	var vida
	var poderBase
	var pocion
	
	var property position = game.center()
	
	//Para chequear las posiciones para la pocion
	const property zonaAtaque = []
	
	method recibirDanio(danio){
		vida -= danio
		if(vida <= 0){ self.morir()}
	}
	method morir(){	}
	method soltarPocion(tipo){
		//mostrar pocion en el mapa
	}
}

class Sombrio inherits Monstruos(vida = 100, poderBase = 10, pocion = "invisibilidad") {
	override method morir(){
		if (0.randomUpTo(3) == 0){
			self.soltarPocion(pocion)
		} else { //borrar bicho del mapa
		}
	}
	method moverse(){
		//se mueve tipo caballo de ajedrez o algo asi, estilo "se teletransporta"
	}
}

class Golem inherits Monstruos(vida = 80, poderBase = 8, pocion = "aturdimiento") {
	override method morir(){
		if (0.randomUpTo(2) == 0){
			self.soltarPocion(pocion)
		} else { //borrar bicho del mapa
		}
	}
	method moverse(){
		//se puede mover en y igual que el personaje pero en x va avanzando
	}
}

class Esqueleto inherits Monstruos(vida = 50, poderBase = 5, pocion = "fuerza") {
	override method morir(){
		if (0.randomUpTo(3) != 0){
			self.soltarPocion(pocion)
		} else { //borrar bicho del mapa
		}
	}
	method moverse(){
		//pensar
	}
}