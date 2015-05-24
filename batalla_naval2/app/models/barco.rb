class Barco

	def initialize(posiciones)
		@posiciones= posiciones
		@tamanho= @posiciones.size
	end

	def posiciones
		@posiciones
	end

	def tamanho
		@tamanho
	end
	
	def set_tamanho(tamaño)
		@tamanho= tamaño
	end

end