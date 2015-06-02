class Tablero

  def initialize(dimension1, dimension2)
    @alto= dimension1
    @ancho= dimension2
    @posiciones_ocupadas= []
    @flota_de_barcos= []
  end


  def alto
    @alto
  end

  def ancho
    @ancho
  end

  def flota_de_barcos
    @flota_de_barcos
  end

  def posiciones_ocupadas
    @posiciones_ocupadas
  end
end