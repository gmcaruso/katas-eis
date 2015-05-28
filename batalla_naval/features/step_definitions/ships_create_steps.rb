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

	has_button?('Añadir Barco a flota').should eq true
  	click_button('Añadir Barco a flota')
  	page.should have_content("Barco agregado!")
end

Then(/^position "(.*?)" is not empty$/) do |posicion|
	pending
end

Given(/^I create a large ship in position "(.*?)"$/) do |posicion|
	pending
end





