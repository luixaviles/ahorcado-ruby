require 'juego'


describe Juego do 
	before (:each) do
		@juego = Juego.new
	end

	it "deberia tener la palabra secreta por defecto generada" do
		palabra = @juego.get_palabra
		palabra.should == "DESARROLLO"
	end 

	it "deberiamos mostrar 10 guiones para la palabra secreta" do
		mascara = @juego.get_mascara
		mascara.should == "_ _ _ _ _ _ _ _ _ _"
	end

	it "deberiamos mostrar una letra en vez de un guion si pertenece a la palabra" do
		@juego.actualizar('D')
		# letra = @juego.get_letra
		mascara = @juego.get_mascara
		mascara.should == "D _ _ _ _ _ _ _ _ _"
	end

	it "deberiamos mostrar 'Ganaste la Partida' al adivinar todas las letras" do
		@juego.actualizar('D')
		@juego.actualizar('E')
		@juego.actualizar('S')
		@juego.actualizar('A')
		@juego.actualizar('R')
		@juego.actualizar('O')
		@juego.actualizar('L')
		
		# letra = @juego.get_letra
		resultado = @juego.get_resultado
		resultado.should == "Ganaste la partida"
	end
	
end
