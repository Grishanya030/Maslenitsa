extends Node

var points = 0
var player = ""
var Leaders_Names = []
var Leaders_Points = []
var LeagersList = ""

func readLeaders():
	var file = FileAccess.open("res://Game/leaderboard.txt", FileAccess.READ)
	var text = file.get_as_text()
	file.close()
	var i = 0 

	 
	while i< text.length()-1:
		var s=""
		var s2 = ""
		var flag = true
		while text[i] != " " or flag and  i< text.length():
			if text[i] == " ":
				Leaders_Names.append(s)
				flag = false
				s=""
				i+=1
			s+=text[i]	
			i+=1
		Leaders_Points.append(int(s))
		i+=1
	print(Leaders_Names, Leaders_Points)
	getMeLeaders()
	var s = ""
	for j in range (5):
		s+=str(Leaders_Names[j]) + " " + str(Leaders_Points[j]) + " "
	file = FileAccess.open("res://Game/leaderboard.txt", FileAccess.WRITE)
	file.store_string(s)
	file.close()

func sort(): 
	var step = Leaders_Points.size() / 2
	while (step != 0):
		for i in range( Leaders_Points.size() - step):
			var j = i;
			while (j >= 0 && Leaders_Points[j] < Leaders_Points[j + step]):
				var s = Leaders_Points[j]
				Leaders_Points [j]=  Leaders_Points[j + step]
				Leaders_Points [j + step]= s
				var ss = Leaders_Names[j]
				Leaders_Names [j]=  Leaders_Names[j + step]
				Leaders_Names [j + step]= ss
				j-=1
		step /= 2
	getMeLeaders()
	
func getMeLeaders():
	var s = ""
	for i in range (5):
		s+=str(Leaders_Names[i]) + " " + str(Leaders_Points[i]) + "\n"
	LeagersList = s
