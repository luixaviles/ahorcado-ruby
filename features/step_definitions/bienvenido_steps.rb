Given(/^visito la pagina principal$/) do
	visit '/'
end

Then(/^deberia ver el mensaje "([^"]*)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end
