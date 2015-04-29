require 'rspec'
require_relative '../model/puntaje.rb'

describe 'Puntaje' do
  
  describe 'Como debe comenzar un partido' do
  
      it 'los Sets deben ser 0 al igual que los Puntos y los Games' do
        tenis= Tenis.new("Pepe","Beto")
        expect(tenis.mostrar_puntos).to eq("0 - 0")
        expect(tenis.mostrar_sets).to eq("0 - 0")
        expect(tenis.mostrar_games).to eq("0 - 0")
      end
  end

  describe 'Algoritmo de puntajes' do

      it 'Cuando un jugador gana un punto debe sumarse a su contador' do
        tenis= Tenis.new("Pepe","Beto")
        puntaje= tenis.puntaje.puntos_jugador_uno
        tenis.anotar_un_punto(1)
        puntaje= puntaje + 1
        expect(tenis.puntaje.puntos_jugador_uno).to eq(puntaje)
      end

      it 'Cuando un jugador gana un game los puntos vuelven a 0' do
        tenis= Tenis.new("Pepe","Beto")
        tenis.puntaje.set_puntos_jugador_uno(3)
        tenis.puntaje.set_puntos_jugador_dos(2)
        games1= tenis.puntaje.games_jugador_uno
        tenis.anotar_un_punto(1)
        expect(tenis.puntaje.puntos_jugador_uno).to eq 0
        expect(tenis.puntaje.puntos_jugador_dos).to eq 0
        expect(tenis.puntaje.games_jugador_uno).to eq (games1 + 1)
      end

      it 'Cuando un jugador gana un set, los games vuelven a 0 y lo mismo ocurre con los puntos' do
        tenis= Tenis.new("Pepe","Beto")
        tenis.puntaje.set_puntos_jugador_uno(3)
        tenis.puntaje.set_puntos_jugador_dos(2)
        tenis.puntaje.set_games_jugador_uno(5)
        sets= tenis.puntaje.sets_jugador_uno
        tenis.anotar_un_punto(1)
        expect(tenis.puntaje.puntos_jugador_uno).to eq 0
        expect(tenis.puntaje.puntos_jugador_dos).to eq 0
        expect(tenis.puntaje.games_jugador_uno).to eq 0
        expect(tenis.puntaje.games_jugador_dos).to eq 0
        expect(tenis.puntaje.sets_jugador_uno).to eq (sets + 1)
      end

      it 'Transformacion de puntos a los puntos de tenis' do
        puntaje= Puntaje.new()
        expect(puntaje.transformar_ptos_a_ptos_tenis(0)).to eq "0"
        expect(puntaje.transformar_ptos_a_ptos_tenis(1)).to eq "15"
        expect(puntaje.transformar_ptos_a_ptos_tenis(2)).to eq "30"
        expect(puntaje.transformar_ptos_a_ptos_tenis(3)).to eq "40"
        expect(puntaje.transformar_ptos_a_ptos_tenis(4)).to eq "Ventaja"

      end
    
  end

  
    
  

end
