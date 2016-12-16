Then(/^deberia mostrar guiones$/) do
  last_response.body.should =~ /_/m
end

Then(/^deberia mostrar "([^"]*)"$/) do |guion|
  last_response.body.should =~ /#{guion}/m
end


