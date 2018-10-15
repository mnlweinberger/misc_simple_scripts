DNA = 'ACGTTNNN'

def remove_n(DNA):
	if DNA.find("N"):
		clean = DNA.replace("N","")
		rev = clean[::-1]
		rev_comp = clean.replace("A","T")
		rev_comp = clean.replace("T","A")
		rev_comp = clean.replace("C","G")
		rev_comp = clean.replace("G","C")
		return rev_comp

print remove_n(DNA)

	

