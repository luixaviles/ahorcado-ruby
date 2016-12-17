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