
def caesar_cipher(input, shift)
	alphabet = ('a'..'z').to_a
	cap_alphabet = ('A'..'Z').to_a
	letters = input.split("")
	result = []
	letters.each do |letter|
		if alphabet.include?(letter)
			i = alphabet.index(letter)
			if i + shift > alphabet.length
				i -= alphabet.length
			end
				letter = alphabet[i + shift]
		elsif cap_alphabet.include?(letter)
			i = cap_alphabet.index(letter)
			if i + shift > cap_alphabet.length
				i -= cap_alphabet.length
			end
				letter = cap_alphabet[i + shift]
		end
		result.push(letter)
	end
	result.join
end
