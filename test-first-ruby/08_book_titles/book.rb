class Book
	attr_reader :title

	def title=(new_title)
		words = new_title.split(" ")
		words.first.capitalize!
		excepts = ["the", "a", "an", "in", "of", "and"]
		words.each do |word|
			if not excepts.include?(word.downcase)
				word.capitalize!
			end
		end
		@title = words.join(" ")
	end
end