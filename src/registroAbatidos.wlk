object registroAbatidosCOD {
	
	const registro = []
	
	method agregarAbatidosDia(cantidad, dia){
		registro.add([cantidad,dia])
	}
	
	method agregarAbatidosVariosDias(registrosAbatidos){
		if(self.estaElDia(dia)){
			self.error("Ya existe el dia")
		}
		registrosAbatidos.forEach{e => self.agregarAbatidosDia(e)}
	
	}
	
	method dia(reg) = reg.get(1) //.last()
	
	method cant(reg) = reg.first()
	
	method estaElDia(dia) = registro.any({r=> self.dia(r)== dia})
	
	method registroDia(dia) = registro.find({r=> self.dia(r)== dia})
	
	method eliminarElRegistroDelDia(dia){
		if(not self.dia() ){
			self.error("El dia no esta en la lista")
		}
		registro.remove(self.registroDia(dia))
		
	}
	
	method eliminarLosRegistrosDeDias(listaDeDias){
		if(not listaDeDias.all{e => self.estaElDia(e)}){
			self.error("Algun dia de la lista no esta inluido")
		}
		listaDeDias.forEach{e => self.eliminarElRegistroDelDia(e)}
	}
	
	//lista de dias que tengo
	
	method cantidadDeDiasRegistrados() = registro.size()
	
	method estaVacioElRegistro() = registro.isEmpty()
	
	method algunDiaAbatio(cantidad) = registro.any({r => self.cant(r)== cantidad})
	
	method primerValorDeAbatidos() = self.cant(registro.first())
	
	method ultimoValorDeAbatidos() = self.cant(registro.last())
	
	method maximoValorDeAbatidos() = registro.max({r => self.cant(r)}).first()
	
	method maximoValorDeAbatidos2()= self.cant(registro.max({r => self.cant(r)}))
	
	method maximoValorConMap() = registro.map({r=> self.cant(r)}).max()
	
	method totalAbatidos() = registro.sum({r=> self.cant(r)})
	
	method cantidadDeAbatidosElDia(dia) = self.cant(self.registroDia(dia))
	
	method ultimoValorDeAbatidosConSize() = self.cant(registro.get(registro.size()-1))
	
	method esCrack() = 
	(1..registro.size()-1).all({i => self.cant(registro.get(i)) > self.cant(registro.get(i-1))})

	
	
	
	
	
	

	
	
}