# 04_pig_latin

module PigLatin

	def pig_latinify(word)
		vowels = ['a', 'e', 'i', 'o', 'u']
		# Creates consonants array by subtracting vowels from a-z range
		consonants = ('a'..'z').to_a - vowels
		
		if vowels.include?(word[0])
				word + 'ay'

		elsif word[0..2] == "squ"
				word[3..-1] + word[0..2] + 'ay'

		elsif word[0..1] == "qu"
				word[2..-1] + word[0..1] + 'ay'

		elsif consonants.include?(word[0]) && 
		  	  consonants.include?(word[1]) &&
		  	  consonants.include?(word[2])
		  		word[3..-1] + word[0..2] + 'ay'
			
		elsif consonants.include?(word[0]) && 
		  	  consonants.include?(word[1])
		  		word[2..-1] + word[0..1] + 'ay'

		elsif consonants.include?(word[0])
			  	word[1..-1] + word[0] + 'ay'

		else
			word
		end
	end
end
# Brings PigLatin into environment scope
include PigLatin

# Translate method is not specific to Pig Latin, can be open to 
# other language modules 

def translate(phrase)
	phrase.split.map {|word| word.pig_latinify(word)}.join(' ')
end


