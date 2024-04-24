import frutas.*
import equipo.*
import juegos.*

object martin {
	var tieneHambre = false 
	var energia = 80
	var cantActividades = 0
	var enLaDespensa = agua
		
	method estaFeliz(){
	    return energia > 80 or (cantActividades >= 2 and not tieneHambre)
	}
	
	 method comprar(unaFruta){
	 	enLaDespensa = unaFruta
	 }
	 
	 method enLaDespensa() = enLaDespensa
	 
	method alimentarse(){
		energia = energia + enLaDespensa.energia()
		tieneHambre = not enLaDespensa.calmaElHambre()
		enLaDespensa = agua
	}
	
	method energia()= energia
	method tieneHambre()= tieneHambre
	method hacerDeporte(unDeporte){
		energia = 0.max(energia + unDeporte.energia())
		cantActividades = cantActividades + 1
	}
	method cantActividades()= cantActividades
	method dormir(){
		energia = energia * 1.5
		enLaDespensa.efectoCambioDia()
	}
	
}
