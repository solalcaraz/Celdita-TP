class Monstruos {
	//sueltan objetos distintos al matarlo
	//se mueven de formas distintas
	var vida = 100
	var poderBase
	var probabilidadDeSoltarPocion
	var pocion	
	
	method recibirDanio(danio){
		vida -= danio
		if(vida <= 0){
			
		}
	}
}

//Al morir suelta una posima de invisivilidad
object sombrio inherits Monstruos {
	
}

//Al morir suelta una posima de aturdimiento
object golem inherits Monstruos {}

//Al morir suelta una posima de fuerza
object esqueleto inherits Monstruos {}

