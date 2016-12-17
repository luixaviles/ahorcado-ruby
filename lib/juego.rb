class Juego
	def initialize
		@palabra = 'DESARROLLO'	
		@array_palabra = @palabra.split ""
		@letra = ""	
		@mascara = "_ _ _ _ _ _ _ _ _ _"
		@array_mascara = @mascara.split " "
	end
	def get_palabra
		@palabra
	end
	def get_mascara
		@mascara = @array_mascara.join ' '
	end
	def get_letra
		@letra
	end		
	def actualizar(letra)
		@array_palabra.each_with_index{ |caracter, index|
			if caracter == letra
				@array_mascara[index] = letra 			
			end
		}				
	end
end 