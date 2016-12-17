Feature: jugar ahorcado

Scenario: Mostrar guiones por cada letra de la palabra
	Given visito la pagina principal	
	Then deberia mostrar guiones

Scenario: Mostrar los guiones separados por espacios
	Given visito la pagina principal
	Then deberia mostrar "_ _ _ _ _ _ _ _ _ _"

Scenario: Cambiar la letra ingresada por el guion 
	Given visito la pagina principal
		And palabra secreta es "DESARROLLO"
	When ingresa una "D"
		And hago click en el boton "id_Adivinar"
	Then deberia mostrar "D _ _ _ _ _ _ _ _ _" 

Scenario: Muestra mensaje "Ganaste la Partida"
	Given visito la pagina principal
		And palabra secreta es "DESARROLLO"
	When ingresa una "D"
		And hago click en el boton "id_Adivinar"
		And ingresa una "E"
		And hago click en el boton "id_Adivinar"
		And ingresa una "S"
		And hago click en el boton "id_Adivinar"
		And ingresa una "A"
		And hago click en el boton "id_Adivinar"
		And ingresa una "R"
		And hago click en el boton "id_Adivinar"
		And ingresa una "O"
		And hago click en el boton "id_Adivinar"
		And ingresa una "L"
		And hago click en el boton "id_Adivinar"		
	Then deberia mostrar "Ganaste la partida"

Scenario: Mostrar numero de intentos
	Given visito la pagina principal
	Then deberia mostrar "#intentos : 6"

Scenario: Deberia descontar intentos al ingresar una letra incorrecta
	Given visito la pagina principal
		And palabra secreta es "DESARROLLO"
	When ingresa una "X"
		And hago click en el boton "id_Adivinar"
	Then deberia mostrar "#intentos : 5"

Scenario: Muestra mensaje Partida Perdida
	Given visito la pagina principal
		And palabra secreta es "DESARROLLO"
	When ingresa una "X"
		And hago click en el boton "id_Adivinar"
		And ingresa una "P"
		And hago click en el boton "id_Adivinar"
		And ingresa una "Z"
		And hago click en el boton "id_Adivinar"
		And ingresa una "J"
		And hago click en el boton "id_Adivinar"
		And ingresa una "K"
		And hago click en el boton "id_Adivinar"
		And ingresa una "U"
		And hago click en el boton "id_Adivinar"
		And ingresa una "Y"
		And hago click en el boton "id_Adivinar"		
	Then deberia mostrar "Partida Perdida"

Scenario: Muestra la Palabra Secreta al Perder la Partida
	Given visito la pagina principal
		And palabra secreta es "DESARROLLO"
	When ingresa una "X"
		And hago click en el boton "id_Adivinar"
		And ingresa una "P"
		And hago click en el boton "id_Adivinar"
		And ingresa una "Z"
		And hago click en el boton "id_Adivinar"
		And ingresa una "J"
		And hago click en el boton "id_Adivinar"
		And ingresa una "K"
		And hago click en el boton "id_Adivinar"
		And ingresa una "U"
		And hago click en el boton "id_Adivinar"
		And ingresa una "Y"
		And hago click en el boton "id_Adivinar"		
	Then deberia mostrar "La palabra secreta es: DESARROLLO"

Scenario: Permite reiniciar el juego al perder la partida
	Given visito la pagina principal
		And palabra secreta es "DESARROLLO"
	When ingresa una "X"
		And hago click en el boton "id_Adivinar"
		And ingresa una "P"
		And hago click en el boton "id_Adivinar"
		And ingresa una "Z"
		And hago click en el boton "id_Adivinar"
		And ingresa una "J"
		And hago click en el boton "id_Adivinar"
		And ingresa una "K"
		And hago click en el boton "id_Adivinar"
		And ingresa una "U"
		And hago click en el boton "id_Adivinar"
		And ingresa una "Y"
		And hago click en el boton "id_Adivinar"
		And hago click en el boton "Reiniciar Juego"		
	Then deberia mostrar "#intentos : 6"
