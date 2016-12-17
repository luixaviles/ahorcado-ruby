Given(/^visito la pagina principal$/) do
	visit '/?palabra=DESARROLLO'
end

Then(/^deberia ver el mensaje "([^"]*)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end
