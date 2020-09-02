object gimenez{
	var fondoParaSueldos = 300000
	
	method fondo(){
		return fondoParaSueldos
	}
	
	method pagarSueldo(empleado){
		fondoParaSueldos -= empleado.sueldo()		
	}
	
}

object galvan{
	var sueldo = 15000
	
	//GETTER
	method sueldo(){
		return sueldo
	}
	
	//SETTER
	method sueldo(pesos){
		sueldo = pesos	
	}
		
}

object baigorria{
	var sueldo = 0
	var cantEmpanadasVendidas = 0
	
	method vender(cantidad){
		cantEmpanadasVendidas += cantidad
		sueldo += cantidad*15
	}
	
	method sueldo(){
		return sueldo	
	}
}

