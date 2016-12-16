Feature: jugar ahorcado

Scenario: Mostrar guiones por cada letra de la palabra
	Given visito la pagina principal	
	Then deberia mostrar guiones

Scenario: Mostrar los guiones separados por espacios
	Given visito la pagina principal
	Then deberia mostrar "_ _ _ _ _ _ _ _ _ _"