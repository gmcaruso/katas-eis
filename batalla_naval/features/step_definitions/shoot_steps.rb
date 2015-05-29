require_relative '../../app/models/tablero.rb'
require_relative '../../app/models/barco.rb'

Given(/^a large ship in position: "(.*?)" "(.*?)"$/) do |posicion1, posicion2|
  	page.should have_content("Crear Barco Grande")
	find_by_id("en_posiciones_uno_grande")
	find_by_id("en_posiciones_dos_grande")

	fill_in('en_posiciones_uno_grande', :with => posicion1)
	fill_in('en_posiciones_dos_grande', :with => posicion2)

	has_button?('Añadir Barco grande a flota').should eq true
  	click_button('Añadir Barco grande a flota')
  	page.should have_content("Barco agregado!")
end

Given(/^I shoot to position "(.*?)"$/) do |posicion|
 	page.should have_content("Ataque a Barcos")

	find_by_id("objetivo")
	fill_in('objetivo', :with => posicion)

	has_button?('Disparar').should eq true
  	click_button('Disparar')
end

Then(/^I get hit$/) do
  	page.should have_content("Tocado")
end

Then(/^I get water$/) do
	pending
end

Then(/^I get sink$/) do
	pending
end

