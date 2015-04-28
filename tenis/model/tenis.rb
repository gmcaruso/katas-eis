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
end