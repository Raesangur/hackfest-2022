import string

# create list of all possible passwords
passwords = []
for int in range(0, 9999):
    passwords.append("bogbogagagag" + str(int).zfill(4))

string = ""
for pw in passwords:
    string += pw + '\n'

with open("passwords.txt", 'w') as myfile:
     myfile.write(string)
