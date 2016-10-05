
def caesar_cipher(input, num)
	alphabet = ('a'..'z').to_a
	cap_alphabet = ('A'..'Z').to_a
	letters = input.split("")
	result = []
	letters.each do |letter|
		if alphabet.include?(letter)
			ind = alphabet.index(letter)
			if ind + num > alphabet.length
				ind = ind - alphabet.length
			end
				letter = alphabet[ind + num]
		elsif cap_alphabet.include?(letter)
			ind = cap_alphabet.index(letter)
			if ind + num > cap_alphabet.length
				ind = ind - cap_alphabet.length
			end
				letter = cap_alphabet[ind + num]
		end
		result.push(letter)
	end
	puts result.join
end



caesar_cipher("What a string!", 5)