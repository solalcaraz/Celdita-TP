import tomas.*
import extra.*
import wollok.game.*

object celdita {
	method iniciar() {
		game.addVisualCharacter(tomas)
		config.configurarTeclas()
		config.configurarColisiones()
	}
}

object config {
	method configurarTeclas() {
		keyboard.z().onPressDo() //Tecla para abrir cofre
	}
	
	method configurarColisiones() {
		//game.onCollideDo (tomas, { algo => algo.teLibera(tomas)})
	}
}