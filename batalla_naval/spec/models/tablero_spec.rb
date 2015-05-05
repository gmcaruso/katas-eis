require_relative '../spec_helper.rb'
require_relative '../../app/models/tablero.rb'

describe Tablero do
	
	describe 'model' do 

		subject { @clase = Tablero.new(4,4)}
		it { should respond_to :ver_posicion }
		it { should respond_to :agregar_barco }
		
	end

	describe 'ver_posicion' do

		it 'Si la posición esta ocupada debe devolver -Hay Barco-' do
			tablero= Tablero.new(4,4)
			barco= Barco.new(["3:1","3:2","3:3"])
			
			tablero.agregar_barco(barco)

			expect(tablero.ver_posicion("3:2")).to eq "Hay Barco"

		end

		it 'Si la posición esta vacía debe devolver -Esta vacío-' do
			tablero= Tablero.new(4,4)
			barco= Barco.new(["3:1","3:2","3:3"])
			
			tablero.agregar_barco(barco)

			expect(tablero.ver_posicion("2:2")).to eq "Esta vacío"
		end
	end

	describe 'disparar_en' do

		it 'Si disparo donde no hay un barco entonces debe devolver -Agua-' do
			tablero= Tablero.new(4,4)
			barco= Barco.new(["3:1","3:2","3:3"])
			
			tablero.agregar_barco(barco)

			expect(tablero.disparar_en("3:4")).to eq "Agua"

		end
	end

	describe 'agregar_barco' do

		it 'Si coloco un barco dentro del mapa debe devolver -Barco agregado!-' do
			tablero= Tablero.new(4,4)
			barco= Barco.new(["3:1","3:2","3:3"])
			
			expect(tablero.agregar_barco(barco)).to eq "Barco agregado!"
		end
		
	end



end