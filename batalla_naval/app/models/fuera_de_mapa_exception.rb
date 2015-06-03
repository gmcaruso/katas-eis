class BarcoFueraDeMapaException < Exception
	def message
		"Barco fuera de mapa"
	end
end


# it 'Al agregar un barco fuera de los limites del tablero se debe esperar una excepcion' do
# 		expect { @tablero.ponerBarcoChicoEn("6:6", BarcoChico.new("Alpha"))
# 		}.to raise_error(FueraDelTableroException)
# 	end