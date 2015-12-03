def translate(str)
	vowels = ["a", "e", "i", "o", "u", "y"]
	consonants = []
	words = str.split(" ")
	new_words = []
	words.each do |word|
		if vowels.include?(word[0])
			new_words.push(word + "ay")
		else
			new_word = word
			word.length.times do
				if not vowels.include?(new_word[0]) or (new_word[0] == "u" and new_word[-1] == "q")
					new_word = (new_word + new_word[0])[1..-1]
				else
					break
				end
			end
			new_words.push(new_word += "ay")
		end
	end
	new_words.join(" ")
end