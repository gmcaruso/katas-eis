require_relative '../app/models/tablero.rb'

describe Tablero do
  
  describe 'model' do 

    subject { @clase = Tablero.new(4,4)}
    it { should respond_to :alto }
    it { should respond_to :ancho }
    it { should respond_to :flota_de_barcos }
    it { should respond_to :posiciones_ocupadas }

  end

  describe 'agregar_barco' do

		it 'Si coloco un barco dentro del mapa debe devolver -Barco agregado!-' do
			tablero= Tablero.new(4,4)
			barco= Barco.new(["3:1","3:2","3:3"])
			
			expect(tablero.agregar_barco(barco)).to eq "Barco agregado!"
		end
	end

end