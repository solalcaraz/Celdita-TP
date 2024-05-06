import tomas.*
import extras.*
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
		keyboard.z().onPressDo() //Tecla para pelar
		//teclas para que los monstruos se muevan
	}
	
	method configurarColisiones() {
		game.onCollideDo (tomas, { algo => algo.teLibera(tomas)})
	}
}