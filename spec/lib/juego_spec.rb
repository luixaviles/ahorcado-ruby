require 'juego'


describe Juego do 
	before (:each) do
		@juego = Juego.new
	end

	it "deberia tener la palabra secreta por defecto generada" do
		palabra = @juego.get_palabra
		palabra.should == "DESARROLLO"
	end 
end
