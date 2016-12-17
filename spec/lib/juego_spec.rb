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
	
	it "deberia definir 6 intentos por defecto al iniciar el juego" do
		resultado = @juego.get_intentos
		resultado.should == 6
	end

	it "deberia descontar intentos al introducir una letra incorrecta" do
		@juego.actualizar('X')
		resultado = @juego.get_intentos
		resultado.should == 5
	end

	it "deberiamos mostrar 'Partida Perdida' al descontar todos los intentos" do
		@juego.actualizar('Z')
		@juego.actualizar('W')
		@juego.actualizar('Q')
		@juego.actualizar('T')
		@juego.actualizar('U')
		@juego.actualizar('M')
		@juego.actualizar('Y')

		resultado = @juego.get_resultado
		resultado.should == "Partida Perdida"
	end

	it "deberia mostrar pista cuando pide ver pista" do
		pista= @juego.get_pista
		pista.should == "... de software"
	end
	
end
