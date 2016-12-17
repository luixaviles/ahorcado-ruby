Then(/^deberia mostrar guiones$/) do
  last_response.body.should =~ /_/m
end

Then(/^deberia mostrar "([^"]*)"$/) do |guion|
  last_response.body.should =~ /#{guion}/m
end

When(/^ingresa una "([^"]*)"$/) do |letra|
	fill_in('letra', :with => letra)
end

When(/^hago click en el boton "([^"]*)"$/) do |name|
  click_button(name)
end

Then(/^deberia mostrar boton "(.*?)"$/) do |name|
  click_button(name)
end

Given(/^palabra secreta es "(.*?)"$/) do |secreta|
  last_response.body.should =~ /#{secreta}/m
end
