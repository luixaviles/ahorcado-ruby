class Juego
	def initialize
		@palabra = 'DESARROLLO'	
		@array_palabra = @palabra.split ""
		@letra = ""	
		@mascara = "_ _ _ _ _ _ _ _ _ _"
		@array_mascara = @mascara.split " "
		@intentos=6
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
		caracter_encontrado=false
		if (@intentos>0)
			@array_palabra.each_with_index{ |caracter, index|
				if caracter == letra
					@array_mascara[index] = letra
					caracter_encontrado=true		
				end
			}
			if(!caracter_encontrado)
				@intentos-=1
			end
		else
			@resultado= "Partida Perdida"
		end
		
	end

	def get_resultado
		if get_mascara == 'D E S A R R O L L O'
			@resultado = "Ganaste la partida"
		end

		return @resultado
	end
	def get_intentos
		@intentos
	end
end 
