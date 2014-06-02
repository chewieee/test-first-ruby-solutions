# 04_pig_latin

# Module is used to wrap methods to allow 
# communication within scope
module PigLats

# Method which puts words into and array, pig_latinifies them, and
# converts back to string
def translate(s)
	s.split.map {|word| word.pig_latinify(word)}.join(' ')
end


def pig_latinify(s)
	vowels = %w{a e i o u}
	# Gives an array of only consonants
	consonants = ('a'..'z').to_a - vowels

	if vowels.include?(s[0])
		s + 'ay'

	elsif consonants.include?(s[0]) && s[1..2] == 'qu'
		s[3..-1] + s[0..2] + 'ay'

	elsif s[0..1] == 'qu'
		s[2..-1] + s[0..1] + 'ay'

	elsif consonants.include?(s[0]) &&  
		  consonants.include?(s[1]) && 
		  consonants.include?(s[2])
			s[3..-1] + s[0..2] + 'ay'

	elsif consonants.include?(s[0]) && 
		  consonants.include?(s[1])
			s[2..-1] + s[0..1] + 'ay'

	elsif consonants.include?(s[0])
		s[1..-1] + s[0] + 'ay'

	else
		s
	end
end
	
end 

include PigLats