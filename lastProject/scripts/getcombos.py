import itertools

# creates all possible combos from list items
# returns them as strings in a list
def makecombos(words, length_limit):
	combos = []

	for i in range(0, len(words)+1):

		if i >= length_limit:
			break

		for subset in itertools.permutations(words, i):
			combo = ""
			for word in subset:
				combo += str(word)

			combos.append(combo)
	return combos

arnewords = ["henry", "Henry", "1975", "10", "06", "75", "troll", "June", "june", "notorious", "tortoise","admin", "password", "123"]
sigurdwords = ["pat", "Pat", "Benatar", "benatar", "1980", "80", "15","crimes","of", "passion","Crimes", "Of", "Passion", "password", "123"]

arnecombos = makecombos(arnewords, 5)
sigurdcombos = makecombos(sigurdwords, 5)

print(len(arnecombos))
print(len(sigurdcombos))

arnefile = open("arnecombos.txt", "w")
sigurdfile = open("sigurdcombos.txt", "w")

for line in arnecombos:
	arnefile.write("%s\n" % line)

for line in sigurdcombos:
	sigurdfile.write("%s\n" % line)
