extends Node

var points = 0
var player = ""


func readLeaders():
	var file = FileAccess.open("res://Game/leaderboard.txt", FileAccess.READ)
	var text = file.get_as_text()
	file.close()
	var i = 0 
	while i<= text.length():
		var s=""
		var s2 = ""
		var flag = true
		while text[i] != " " or flag:
			if text[i] == " ":
				flag = false
				s2= s
				s=""
			s+=text[i]	
			i+=1
			
		
		#Leaders.append(s)
		i+=1
