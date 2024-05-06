import wollok.game.*
import monstruos.*
import extra.*

object tomas {
	const property mochila = []
	var property capacidad = 3
	var espada = false
	
	var property vivo = true
	var property vida = 100
	
	var property poderBase = 5
	
	//Configurar posicion
	//var property position
	
	//Obtener pocion
	method agarrar(pocion){ 
		if (mochila.size() < capacidad){
			mochila.add(pocion)
		} else {
			game.say(self, "No puedo cargar más")
		}
	}
	
	//Usar las pociones
	method usarPocion(){
		if (mochila.isNotEmpty()){
			mochila.first().activar()
			mochila.remove(mochila.first())		
		} else { game.say(self, "No tengo pociones")}
	}
	
	//Obtener espada
	method agarrarEspada(){	espada = true}
	
	//Mata monstruos 
	method atacar(monstruo) {
		if(espada){
			monstruo.recibirDanio(poderBase)
		} else {
			monstruo.recibirDanio(poderBase/2)
		}
	}
	
	//Vida del personaje
	method estaHerido(danio) {
		vida -= danio 
		if(vida <= 0) {self.morir()}
	}
	method morir() {
		vivo = false
		game.say(self, "Has muerto!")
		game.schedule(5000, {game.stop()})
	}
}

