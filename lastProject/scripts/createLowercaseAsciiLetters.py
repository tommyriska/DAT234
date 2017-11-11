with open('asciiLowercasePWList.txt', 'w') as f:
	for i in range(97, 123):
		for j in range(97, 123):
			password = chr(i) + chr(j)
			f.write(password + '\n')
print('Done!')
