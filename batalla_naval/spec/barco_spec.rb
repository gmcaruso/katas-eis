require_relative '../app/models/barco.rb'

describe Barco do
  
  describe 'model' do 

    subject { @clase = Barco.new([])}
    it { should respond_to :posiciones }    
    it { should respond_to :tamanho }    
    it { should respond_to :set_tamanho }    
  end

end