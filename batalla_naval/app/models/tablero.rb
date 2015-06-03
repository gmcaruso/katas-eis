require_relative '../../app/models/barco.rb'
require_relative '../../app/models/fuera_de_mapa_exception.rb'

class Tablero

  def initialize(dimension1, dimension2)
    @alto= dimension1
    @ancho= dimension2
    @posiciones_ocupadas= []
    @flota_de_barcos= []
  end

  def agregar_barco(barco)
    if chequear_dimension_de(barco)
      posicionar_barco_en_radar(barco)
      flota_de_barcos.push(barco)
      "Barco agregado!"
    else 
      raise BarcoFueraDeMapaException, "Barco fuera de mapa"
    end
  end

  def posicionar_barco_en_radar(barco)
    barco.posiciones.each do |posicion|
      posiciones_ocupadas.push(posicion)
    end
  end

  def chequear_dimension_de(barco)
    entra_en_mapa= true
    barco.posiciones.each do |posicion|
      entra_en_mapa= esta_dentro_del_mapa(alto, ancho, posicion, entra_en_mapa)
    end
    entra_en_mapa
  end

  def esta_dentro_del_mapa(alto, ancho, posicion_del_barco, entra_en_mapa)
    entra_en_mapa= entra_en_mapa && (posicion_del_barco[0].to_i < ancho.to_i && posicion_del_barco[2].to_i < alto.to_i)
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