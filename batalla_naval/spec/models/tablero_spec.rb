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
			tablero.agregar_barco("3:3")
			tablero.agregar_barco("3:2")
			tablero.agregar_barco("3:1")

			expect(tablero.ver_posicion("3:2")).to eq "Hay Barco"

		end

		
	end

end