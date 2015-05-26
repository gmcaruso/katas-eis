require_relative '../../app/models/tablero.rb'
require_relative '../../app/models/barco.rb'

Given(/^a large ship in position: "(.*?)" "(.*?)"$/) do |posicion1, posicion2|
  	page.should have_content("Crear Barco")
	
	find_by_id("en_posiciones_uno")
	find_by_id("en_posiciones_dos")

	fill_in('en_posiciones_uno', :with => posicion1)
	fill_in('en_posiciones_dos', :with => posicion2)

	has_button?('Añadir a flota').should eq true
  	click_button('Añadir a flota')

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
	page.should have_content("Agua")
end

Then(/^I get sink$/) do
	page.should have_content("Hundido")
end

