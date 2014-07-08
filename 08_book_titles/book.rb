# Book Titles

class Book

	attr_writer :title

	def title
		words = @title.split(' ').map do |word|
			no_caps = %w{and in the of a an}
			if no_caps.include?(word)
				word
			else
				word.capitalize
			end
		end
		words[0].capitalize!
		words.join(' ')
	end

end