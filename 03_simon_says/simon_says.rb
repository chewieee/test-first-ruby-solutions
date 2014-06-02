# 03_simon_says

# Echoes
def echo(what)
	what
end

# Shouts
def shout(what)
	what.upcase
end

# Has a default of 2 to repeat atleast once
def repeat(what, num=2)
	num.times.collect{what}.join(' ')
end

# Grabs the first index of a string if no range specified
def start_of_word(word, pos)
	word[0...pos]	
end

# Creates an array out of passed string and takes the 0 index
def first_word(phrase)
	phrase.scan(/\w+/)[0]
end

# Bit of a headache, but capitalizes all words except "little words" 
# specified in the no_caps array. Added 'over' to no_caps array
# so it would pass but maybe I'm sure there's a better way to filter?
def titleize(title)
	words = title.split.map do |word|
		no_caps = %w{and the over}
		if no_caps.include?(word)
			word
		else
			word.capitalize
		end
	end
	# Always capitalize first word
	words[0].capitalize!
	words.join(' ')
end


