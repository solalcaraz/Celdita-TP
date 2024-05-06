import tomas.*
import extra.*
import wollok.game.*

object celdita {
	method iniciar() {
		game.addVisualCharacter(personaje)
		config.configurarTeclas()
		config.configurarColisiones()
	}
}

object config {
	method configurarTeclas() {
		keyboard.z().onPressDo() //Tecla para pelar
		//teclas para que los monstruos se muevan
	}
	
	method configurarColisiones() {
		game.onCollideDo (personaje, { algo => algo.teLibera(personaje)})
	}
}