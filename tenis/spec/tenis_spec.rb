require 'rspec'
require_relative '../model/tenis.rb'

describe 'Tenis' do
  
  describe 'como debe comenzar un partido' do
  
      it 'los Sets deben ser 0 al igual que los Puntos y los Games' do
        tenis= Tenis.new("Pepe","Beto")
        expect(tenis.puntaje.ver_puntos()) == ("0 - 0")
        expect(tenis.puntaje.ver_sets()) == ("0 - 0")
        expect(tenis.puntaje.ver_games()) == ("0 - 0")
      end

      it 'Cuando un jugador gana un punto debe sumarse a su contador' do
        tenis= Tenis.new("Pepe","Beto")
        puntaje= tenis.puntaje.puntos_jugador_uno
        tenis.anotar_un_punto(1)
        puntaje= puntaje + 1
        expect(tenis.puntaje.puntos_jugador_uno) == puntaje
      end
    
  end


end
