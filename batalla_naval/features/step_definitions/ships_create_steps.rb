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
	page.should have_content("Crear Barco Chico")
	find_by_id("en_posiciones_uno_chico")

	fill_in('en_posiciones_uno_chico', :with => posicion)

	has_button?('Añadir Barco chico a flota').should eq true
  	click_button('Añadir Barco chico a flota')
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
	page.should have_content("Crear Barco Grande")
	find_by_id("en_posiciones_uno_grande")
	find_by_id("en_posiciones_dos_grande")

	fill_in('en_posiciones_uno_grande', :with => posicion)
	fill_in('en_posiciones_dos_grande', :with => "3:4")

	has_button?('Añadir Barco grande a flota').should eq true
  	click_button('Añadir Barco grande a flota')
  	page.should have_content("Barco agregado!")
end





