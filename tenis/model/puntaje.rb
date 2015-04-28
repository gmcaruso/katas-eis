class Puntaje

	def initialize()
        @sets_jugador_uno= 0
        @games_jugador_uno= 0
        @puntos_jugador_uno= 0

        @sets_jugador_dos= 0
        @games_jugador_dos= 0
        @puntos_jugador_dos= 0
    end

    def ver_puntos()
    	puts String(@puntos_jugador_uno) + ' - ' +String(@puntos_jugador_dos)
    end

    def ver_sets()
    	puts String(@sets_jugador_uno) + ' - ' + String(@sets_jugador_dos)
    end

    def ver_games()
    	puts String(@games_jugador_uno) +' - '+ String(@games_jugador_dos)
    end

end