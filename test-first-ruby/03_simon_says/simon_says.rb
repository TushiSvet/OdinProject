def echo(m)
	m
end

def shout(m)
	m.upcase
end

def repeat(m, n = 2)
	res = ""
	n.times { res += m + " " }
	res[0...-1]
end

def start_of_word(m, n)
	m[0...n]
end

def first_word(m)
	m.split(" ").first
end

def titleize(str)
	words = str.split(" ")
	words.first.capitalize!
	words.each do |word|
		if word.downcase != "the" and word.downcase != "and" and word.downcase != "over"
			word.capitalize!
		end
	end
	words.join(" ")
end