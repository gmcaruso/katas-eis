class Tablero

	def initialize(dimension1, dimension2)
		@alto= dimension1
		@ancho= dimension2
		@posiciones_ocupadas= []
	end

	def ver_posicion(posicion)
		if (posiciones_ocupadas.include?(posicion))
			"Hay Barco"
		else
			"Esta vacío"
		end
	end
	
	def posiciones_ocupadas
		@posiciones_ocupadas
	end

	def agregar_barco(barco)
		@posiciones_ocupadas.push(barco)
	end

end