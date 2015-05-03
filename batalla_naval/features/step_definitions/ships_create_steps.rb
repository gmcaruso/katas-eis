require_relative '../../app/models/tablero.rb'
require_relative '../../app/models/barco.rb'
require_relative '../../app/models/norte.rb'


Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |dimension1, dimension2|
	@tablero= Tablero.new(dimension1,dimension2)
end

Given(/^I create a small ship in position "(.*?)"$/) do |posicion|
	@barco_chico= Barco.new(posicion, 1, Norte.new())  	
end

Then(/^position "(.*?)" is not empty$/) do |posicion|
	"Hay Barco" == @tablero.ver_posicion(posicion)
end

Given(/^I create a large ship in position "(.*?)"$/) do |posicion|
	@barco_grande= Barco.new(posicion, 2, Norte.new())
end





