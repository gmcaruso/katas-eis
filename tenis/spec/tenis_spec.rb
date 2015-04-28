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

      it 'Cuando un jugador gana un game los puntos vuelven a 0' do
        tenis= Tenis.new("Pepe","Beto")
        tenis.puntaje.set_puntos_jugador_uno(3)
        tenis.puntaje.set_puntos_jugador_dos(2)
        tenis.puntaje.set_games_jugador_uno(1)
        games1= tenis.puntaje.games_jugador_uno
        puntos1= tenis.puntaje.puntos_jugador_uno
        puntos2= tenis.puntaje.puntos_jugador_dos
        tenis.anotar_un_punto(1)
        expect(tenis.puntaje.puntos_jugador_uno) == puntos1
        expect(tenis.puntaje.games_jugador_uno) == games1
      end
    
  end


end
