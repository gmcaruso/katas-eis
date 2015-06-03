Given(/^a large ship in position: "(.*?)" "(.*?)"$/) do |posicion1, posicion2|
  find_by_id("en_posiciones_uno_grande")
  find_by_id("en_posiciones_dos_grande")

  fill_in('en_posiciones_uno_grande', :with => posicion1)
  fill_in('en_posiciones_dos_grande', :with => posicion2)

    click_button('Añadir Barco grande a flota')
end

Given(/^I shoot to position "(.*?)"$/) do |posicion|
  find_by_id("objetivo")

  fill_in('objetivo', :with => posicion)

  click_button('Disparar')
end

Then(/^I get hit$/) do
  pending
end

Then(/^I get water$/) do
  pending
end

Then(/^I get sink$/) do
  pending
end

