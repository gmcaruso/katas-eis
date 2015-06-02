Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |dimension1, dimension2|
  visit '/batalla_naval'
	
	find_by_id("dimension1")
	find_by_id("dimension2")

	fill_in('dimension1', :with => dimension1)
	fill_in('dimension2', :with => dimension2)

	has_button?('Setear dimensiones').should eq true
	click_button('Setear dimensiones')

end

Given(/^I create a small ship in position "(.*?)"$/) do |posicion|
  find_by_id("en_posiciones_uno_chico")

	fill_in('en_posiciones_uno_chico', :with => posicion)

	has_button?('Añadir Barco chico a flota').should eq true
  click_button('Añadir Barco chico a flota')
end

Then(/^position "(.*?)" is not empty$/) do |posicion|
  pending
end

Given(/^I create a large ship in position "(.*?)"$/) do |posicion|
  pending
end





