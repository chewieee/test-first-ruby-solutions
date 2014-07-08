# Simon Says

def echo(arg)
	arg
end

def shout(arg)
	arg.upcase
end

def repeat(arg, num=2)
	num.times.collect{arg}.join(' ')
end

def start_of_word(arg, num)
	arg[0...num]
end

def first_word(arg)
	arg.split(' ')[0]
end

def titleize(arg)
	words = arg.split(' ').map do |word| 
		little_words = %w{and over the}
		if little_words.include?(word)
			word
		else
			word.capitalize
		end
	end
	words[0].capitalize!
	words.join(' ')
end