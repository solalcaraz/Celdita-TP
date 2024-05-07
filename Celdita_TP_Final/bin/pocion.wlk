class Pociones{
	var position
	method image(){}
	method position() = position
	method esEncontrado(personaje){}
	
}

class PocionInvisibilidad inherits Pociones {
	//te da invisibilidad por un par de segundos y vida al maximo
}

class PocionFuerza inherits Pociones {
	//te da poder extra
}

class PocionAturdimiento inherits Pociones {
	//deja quieto a los bichos que esten al rededor del personaje, tipo 3 posiciones al rededor
}