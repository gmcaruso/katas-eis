require_relative '../app/models/tablero.rb'

describe Tablero do
  
  describe 'model' do 

    subject { @clase = Tablero.new(4,4)}
    it { should respond_to :alto }
    it { should respond_to :ancho }
    it { should respond_to :flota_de_barcos }
    it { should respond_to :posiciones_ocupadas }

  end

end