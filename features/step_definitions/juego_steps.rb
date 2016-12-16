Then(/^deberia mostrar guiones$/) do
  last_response.body.should =~ /_/m
end

