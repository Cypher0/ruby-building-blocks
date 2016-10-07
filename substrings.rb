dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, subs_array)
	result = Hash.new(0)
	string.downcase!
	words = string.split
	words.each do |word|
		word.gsub!(/[^a-z]/, '')
		subs_array.each do |w|
			if word.include?(w)
				result[w] += 1
			end
		end
	end
		puts result
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)