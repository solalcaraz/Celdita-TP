import wollok.game.*
import tomas.*

object espada {
	var property position = game.at(15, 7)
	
	method image() = "espada.png"
	method esEncontrado(personaje) {}
}
object aldeano {
	var property position = game.center()
	
	//method image() = 
	method esEncontrado(personaje){
		//eliminar aldeano encerrado, mostrar aldeano libre, sumarlo a la cantidad que encontro
	}
}