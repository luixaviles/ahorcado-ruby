Feature: jugar ahorcado

Scenario: Mostrar guiones por cada letra de la palabra
	Given visito la pagina principal	
	Then deberia mostrar guiones

Scenario: Mostrar los guiones separados por espacios
	Given visito la pagina principal
	Then deberia mostrar "_ _ _ _ _ _ _ _ _ _"

Scenario: Cambiar la letra ingresada por el guion 
	Given visito la pagina principal
	When ingresa una "D"
		And hago click en el boton "id_Adivinar"
	Then deberia mostrar "D _ _ _ _ _ _ _ _ _" 

Scenario: Muestra mensaje "Ganaste la Partida"
	Given visito la pagina principal
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
	When ingresa una "X"
		And hago click en el boton "id_Adivinar"
	Then deberia mostrar "#intentos : 5"
	
