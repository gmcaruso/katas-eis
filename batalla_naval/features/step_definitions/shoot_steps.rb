require_relative '../../app/models/tablero.rb'
require_relative '../../app/models/barco.rb'

Given(/^a large ship in position: "(.*?)" "(.*?)"$/) do |posicion1, posicion2|
  	# @barco_grande= Barco.new([posicion1, posicion2])
  	# @tablero.agregar_barco(@barco_grande)
end

Given(/^I shoot to position "(.*?)"$/) do |posicion|
 	# @resultado= @tablero.disparar_en(posicion.to_s)
end

Then(/^I get hit$/) do
  	# if @resultado == "Tocado"
  	# 	puts @resultado
  	# end
end

Then(/^I get water$/) do
	# if @resultado == "Agua"
	# 	puts @resultado
	# end
end

Then(/^I get sink$/) do
# 	if @resultado == "Hundido"
# 		puts @resultado
# 	end
end

