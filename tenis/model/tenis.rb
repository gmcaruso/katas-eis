require_relative '../model/puntaje.rb'
class Tenis

	def initialize(jugador_uno, jugador_dos)
        @jugador_uno= jugador_uno
        @jugador_dos= jugador_dos

        @puntaje= Puntaje.new()
    end

    def puntaje
        @puntaje
    end

    def anotar_un_punto(numero_del_jugador)
        if numero_del_jugador == 1
            puntaje.sumar_puntos_jugador(1)
        else
            puntaje.sumar_puntos_jugador(2)
        end

    end

    def mostrar_puntos
        @puntaje.ver_puntos
    end

    def mostrar_sets
        @puntaje.ver_sets
    end

    def mostrar_games
        @puntaje.ver_games
    end
#
end