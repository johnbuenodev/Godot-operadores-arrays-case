extends Node2D

const INIT_VALUE_RESET : float = 0
@export var show_value: bool = false
var number_value: int = 13

#exemplo de match
var classe: String = "Mago"
var list: Array = ["verde", "amarelo", "vermelho", "azul", "roxo"]
# Called when the node enters the scene tree for the first time.
func _ready():
	#print(INIT_VALUE_RESET)
	if show_value == true :
		print("Informe os valores de entrada")
	#elif number_value >= 10 :
		#print("Valor maior que 10. Resultado: " + str(number_value)) 
	elif number_value > 10 and number_value < 20 :
		print("Valor entre 10 e 20. Resultado: " + str(number_value))
	else:
		print("Valor menor que 10. Resultado: " + str(number_value))
	#Exemplo Match/CASE
	match classe:
		"Guerreiro":
			print("Ganhou uma Espada de ferro | +10  ataque")
		"Arqueiro":
			print("Ganhou Arco longo | +5 Velocidade")
		"Mago":
			print("Ganhou Cajado de Cristal | +3 Dano de Gelo")
		_:
			print("Escolha um personagem")	
	print("Lista:")
	print(list)
	
	print("Lista enbaralhada")
	list.shuffle()
	print(list)
	#verificar se valor está na lista
	if list.has("verde"): 
		print("Tem o valor")
	print("tamanho da lista")
	print(list.size())
	var indexValue: int = list.find("vermelho") #vermelho
	#-1 quando não tem o valor
	
	if indexValue == -1 :
		print("Valor não existe ou não foi localizado")
	
	if indexValue != -1 :
		#list.erase(indexValue)
		print("Deletado o valor Vermelho")
		list.remove_at(indexValue)
		print(indexValue)
		
	print("tamanho da lista Atualizada")
	print(list.size())	
	print("Add novo valor: " + "magento")
	list.append("magento")
	print("tamanho da lista Atualizada")
	print(list.size())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
