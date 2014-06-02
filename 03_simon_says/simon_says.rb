# 03_simon_says

# Echoes
def echo(what)
	what
end

# Shouts
def shout(what)
	what.upcase
end

# Has a default of 2 but repeats x number of times
def repeat(what, x=2)
	x.times.collect{what}.join(' ')
end

# Grabs the first index of a string if no range specified
def start_of_word(word, pos)
	word[0...pos]	
end

# Creates an array out of passed string and takes the first index
def first_word(phrase)
	words = phrase.scan(/\w+/)
	words[0]
end

# Bit of a headache, but capitalizes all words except "little words" 
# specified in the little_words array. Addded 'over' to little_words array
# so it would pass but thinking there's a better way to filter
def titleize(title)
	little_words = %w{the by a for of are with and to in over}
	words = title.split(' ').map do |word|
		little_words.include?(word) ? word : word.capitalize
	end
	# Always capitalizes first word
	words[0].capitalize!
	words.join(' ')
end
