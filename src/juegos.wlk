object voley{
	var cantDeMinutos = 0
	
	method cantDeMinutos(minutos){
		cantDeMinutos = minutos
	}
	method cantDeMinutos()= cantDeMinutos
	method energia()= 2* cantDeMinutos * -1
	
}


object futbol {
	var energia = -10
	method energia() = energia
	method energia(unValor){
		energia = unValor.abs() * -1
	}
}

object aerobic{
	var temperaturaActual = 18
	
	method temperaturaActual()= temperaturaActual
	method temperaturaActual(unValor){
		temperaturaActual = unValor
	}
	method energia()= temperaturaActual * 0.5
	
}

object basquet{
	method energia()= -8
}

