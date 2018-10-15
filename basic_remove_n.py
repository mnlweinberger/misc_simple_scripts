DNA = 'ACGTTNNN'

def remove_n(DNA):
	if DNA.find("N"):
		clean = DNA.replace("N","")
		return clean 		

print remove_n(DNA)
