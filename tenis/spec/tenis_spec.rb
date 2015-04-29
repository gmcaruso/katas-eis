require 'rspec'
require_relative '../model/tenis.rb'
require_relative '../model/puntaje.rb'

describe 'Tenis' do
  
  describe 'Cuando un jugador esta por finalizar un partido' do
  
        it 'Cuando un jugador alcance los 6 games gana el set' do
          tenis= Tenis.new("Pepe","Beto")
          tenis.puntaje.set_puntos_jugador_uno(3)
          tenis.puntaje.set_puntos_jugador_dos(2)
          tenis.puntaje.set_games_jugador_uno(5)
          tenis.puntaje.set_sets_jugador_uno(0)
          tenis.anotar_un_punto(1)
          expect(tenis.puntaje.sets_jugador_uno).to eq 1
        end

        it 'Cuando un jugador alcance los 2 sets gana el partido' do
          tenis= Tenis.new("Pepe","Beto")
          tenis.puntaje.set_puntos_jugador_uno(3)
          tenis.puntaje.set_puntos_jugador_dos(2)
          tenis.puntaje.set_games_jugador_uno(5)
          tenis.puntaje.set_sets_jugador_uno(1)
          expect(tenis.anotar_un_punto(1)).to eq "GANO EL JUGADOR NUMERO UNO"
        end
  end
  
end
