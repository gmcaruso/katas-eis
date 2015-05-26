require_relative '../../app/models/tablero.rb'
require_relative '../../app/models/barco.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |dimension1, dimension2|
	visit '/batalla_naval'
	page.should have_content("Crear Tablero")
	find_by_id("dimension1")
	find_by_id("dimension2")

	fill_in('dimension1', :with => dimension1)
	fill_in('dimension2', :with => dimension2)

	has_button?('Setear dimensiones').should eq true
  	click_button('Setear dimensiones')

  	page.should have_content("Tablero creado de #{dimension1} por #{dimension2}")
end

Given(/^I create a small ship in position "(.*?)"$/) do |posicion|
	page.should have_content("Crear Barco")
	find_by_id("en_posiciones_uno")

	fill_in('en_posiciones_uno', :with => posicion)

	has_button?('Añadir a flota').should eq true
  	click_button('Añadir a flota')
  	page.should have_content("Barco agregado!")
end

Then(/^position "(.*?)" is not empty$/) do |posicion|
	page.should have_content("Chequeo de posiciones")
	find_by_id("ver")
	fill_in('ver', :with => posicion)

	has_button?('Ver posición').should eq true
  	click_button('Ver posición')
  	page.should have_content("Hay Barco")
end

Given(/^I create a large ship in position "(.*?)"$/) do |posicion|
	page.should have_content("Crear Barco")
	find_by_id("en_posiciones_uno")
	find_by_id("en_posiciones_dos")

	fill_in('en_posiciones_uno', :with => posicion)
	fill_in('en_posiciones_dos', :with => "3:4")

	has_button?('Añadir a flota').should eq true
  	click_button('Añadir a flota')

  	page.should have_content("Barco agregado!")
end





