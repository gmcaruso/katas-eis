class Puntaje

	def initialize()
        @sets_jugador_uno= 0
        @games_jugador_uno= 0
        @puntos_jugador_uno= 0

        @sets_jugador_dos= 0
        @games_jugador_dos= 0
        @puntos_jugador_dos= 0
    end

    def sumar_puntos_jugador(numero_de_jugador, cantidad_de_puntos)
        if numero_de_jugador == 1
            set_puntos_jugador_uno(puntos_jugador_uno + 1)
        else
            set_puntos_jugador_dos(puntos_jugador_dos + 1)
        end
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

    def set_puntos_jugador_uno(puntos)
        @puntos_jugador_uno= puntos
    end

    def puntos_jugador_uno
        @puntos_jugador_uno
    end

    def set_puntos_jugador_dos(puntos)
        @puntos_jugador_dos= puntos
    end

    def puntos_jugador_dos
        @puntos_jugador_dos
    end

    def sets_jugador_uno
        @sets_jugador_uno
    end

    def sets_jugador_dos
        @sets_jugador_dos
    end

    def games_jugador_uno
        @games_jugador_uno
    end

    def games_jugador_dos
        @games_jugador_dos
    end

end