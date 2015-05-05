require_relative '../../app/models/tablero.rb'
require_relative '../../app/models/barco.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |dimension1, dimension2|
	@tablero= Tablero.new(dimension1,dimension2)
end

Given(/^I create a small ship in position "(.*?)"$/) do |posicion|
	posiciones= [posicion]
	@barco_chico= Barco.new(posiciones)  	
end

Then(/^position "(.*?)" is not empty$/) do |posicion|
	"Hay Barco" == @tablero.ver_posicion(posicion)
end

Given(/^I create a large ship in position "(.*?)"$/) do |posicion|
	posiciones= [posicion, "3:4"]
	@barco_grande= Barco.new(posiciones)
end





