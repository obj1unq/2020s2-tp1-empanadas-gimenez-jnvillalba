object gimenez{
	var fondoParaSueldos = 300000
	
	method fondo(){
		return fondoParaSueldos
	}
	
	method pagarSueldo(empleado){
		fondoParaSueldos -= empleado.sueldo()
		empleado.reiniciarMes()
		empleado.pagarDeudas()
	}
	
}

object galvan{
	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	

	//GETTER
	method sueldo(){
		return sueldo
	}
	
	method deuda(){
		return deuda
	}
	
	method dinero(){
		return dinero
	}
	
	//SETTER
	method sueldo(pesos){
		sueldo = pesos	
	}
	
	method gastar(cuanto){
		deuda  += cuanto
		deuda  -= dinero
		dinero = 0.max(dinero - dinero)
	}
	
	method pagarDeudas(){
		dinero = 0.max(sueldo - deuda)
		deuda = 0.max(deuda - sueldo)  
	}
	
	method reiniciarMes(){}
}

object baigorria{
	var sueldo = 0
	var cantEmpanadasVendidas = 0
	var ahorro = 0
	
	method vender(cantidad){
		cantEmpanadasVendidas += cantidad
	}
	
	method reiniciarMes(){
		ahorro += sueldo
		cantEmpanadasVendidas = 0
	}
	
	
	//GETTER
	method cantEmpanadasVendidas(){
		return cantEmpanadasVendidas
	}
	
	method sueldo(){
		sueldo = cantEmpanadasVendidas*15
		return sueldo
	}
	
	//Qué hacen los empleados con lo que cobran
	method totalCobrado(){
		return ahorro
	}
	
	method pagarDeudas(){}
}

