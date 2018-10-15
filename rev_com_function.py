def reverse(DNA):
	rev = DNA[::-1]
	rev_comp = rev.replace("A","T")
	rev_comp = rev.replace("T","A")
	rev_comp = rev.replace("C","G")
	rev_comp = rev.replace("G","C")
	return rev_comp

print ('TCCCG')
print reverse('TCCCG')
