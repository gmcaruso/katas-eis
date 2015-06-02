require_relative '../../app/models/barco.rb'

class Tablero

  def initialize(dimension1, dimension2)
    @alto= dimension1
    @ancho= dimension2
    @posiciones_ocupadas= []
    @flota_de_barcos= []
  end

  def agregar_barco(barco)
    posicionar_barco_en_radar(barco)
    flota_de_barcos.push(barco)
    "Barco agregado!"
  end

  def posicionar_barco_en_radar(barco)
    barco.posiciones.each do |posicion|
      posiciones_ocupadas.push(posicion)
    end
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