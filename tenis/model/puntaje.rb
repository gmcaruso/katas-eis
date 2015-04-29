class Puntaje

	def initialize()
        @sets_jugador_uno= 0
        @games_jugador_uno= 0
        @puntos_jugador_uno= 0

        @sets_jugador_dos= 0
        @games_jugador_dos= 0
        @puntos_jugador_dos= 0
    end

    def sumar_puntos_jugador(numero_de_jugador)
        if numero_de_jugador == 1
            if (puntos_jugador_uno == 3 && puntos_jugador_dos <= 2 ) || (puntos_jugador_uno == 4 && puntos_jugador_dos <= 3)
                reset_puntos
                set_games_jugador_uno(games_jugador_uno + 1)
                if games_jugador_uno == 6
                    reset_games
                    set_sets_jugador_uno(sets_jugador_uno + 1)
                    gano_alguien
                end
            else
                set_puntos_jugador_uno(puntos_jugador_uno + 1)
            end
        else
            if (puntos_jugador_uno <= 2 && puntos_jugador_dos == 3 ) || (puntos_jugador_uno <= 3 && puntos_jugador_dos == 4)
                reset_puntos
                set_games_jugador_dos(games_jugador_dos + 1)
                if games_jugador_dos == 6
                    reset_games
                    set_sets_jugador_dos(sets_jugador_dos + 1)
                    gano_alguien
                end
            else
                set_puntos_jugador_dos(puntos_jugador_dos + 1)
            end
        end
    end

    def gano_alguien
        if sets_jugador_uno == 2
            "GANO EL JUGADOR NUMERO UNO"
        elsif sets_jugador_dos == 2
            "GANO EL JUGADOR NUMERO DOS"
        end
    end

    def reset_puntos
        set_puntos_jugador_uno(0)
        set_puntos_jugador_dos(0)
    end 

    def reset_games
        set_games_jugador_uno(0)
        set_games_jugador_dos(0)
    end 

    def ver_puntos
        "#{transformar_ptos_a_ptos_tenis(@puntos_jugador_uno)} - #{transformar_ptos_a_ptos_tenis(@puntos_jugador_dos)}"
    end

    def ver_sets
        "#{sets_jugador_uno} - #{sets_jugador_dos}"
    end

    def ver_games
        "#{games_jugador_uno} - #{games_jugador_dos}"
    end

    def transformar_ptos_a_ptos_tenis(cant_puntos)
        case cant_puntos
            when 0
                "0"
            when 1
                "15"
            when 2
                "30"
            when 3
                "40"
            when 4
                "Ventaja"
            end
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

    def set_games_jugador_uno(numero)
        @games_jugador_uno= numero
    end

    def games_jugador_uno
        @games_jugador_uno
    end

    def set_games_jugador_dos(numero)
        @games_jugador_dos= numero
    end

    def games_jugador_dos
        @games_jugador_dos
    end
    
    def set_sets_jugador_uno(numero)
        @sets_jugador_uno= numero
    end

    def sets_jugador_uno
        @sets_jugador_uno
    end

    def sets_jugador_dos
        @sets_jugador_dos
    end

# tenis= Tenis.new()
# tenis.mostrar_puntos
# tenis.mostrar_sets
# tenis.mostrar_games

end