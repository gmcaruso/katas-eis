require_relative '../../app/models/tablero.rb'
require_relative '../../app/models/barco.rb'

Given(/^a large ship in position: "(.*?)" "(.*?)"$/) do |posicion1, posicion2|
	posiciones= [posicion1, posicion2]
  	@barco_grande= Barco.new(posiciones)
end

Given(/^I shoot to position "(.*?)"$/) do |posicion|
 	@resultado= @tablero.disparar_en(posicion)
end

Then(/^I get hit$/) do
  	pending
end

Then(/^I get water$/) do
  	if @resultado == "Agua"
  		puts "AGUA"
  	end
end

Then(/^I get sink$/) do
  	pending
end

