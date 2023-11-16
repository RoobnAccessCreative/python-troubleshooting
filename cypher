def letter_to_number(letter):
    letters = "abcdefghjiklmnopqrstuvwxyz"
    # Find the number corresponding to the given letter.
    # In this case a = 0, b = 1, c = 2, ..., z = 25.
    number = letters.index(letter)
    return number

def number_to_letter(index):
    letters = "abcdefghijklmnopqrstuvwxyz"
    # Finds the letter corresponding to the given number.
    # In this case 0 = a, 1 = b, 2 = c, ..., 25 = z.
    return letters[index]

def shift(letter):
    if letter.isalpha():
        n = letter_to_number(letter)
        return number_to_letter( (n + 13) % 26 )
    else:
        return letter

def rot13(string):
    ciphertext = ""
    # Creates the cipher text one step at at time
    for letter in string:
        ciphertext += shift(letter)
    return ciphertext
        
plaintext = input("Enter your message\n—> ")
ciphertext = rot13(plaintext.lower())
print("------------------------------------------------------------------")
print("  ",ciphertext)
