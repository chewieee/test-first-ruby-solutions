# Dictionary

class Dictionary

	def initialize 
		@entries = {}
	end
	
	attr_reader :entries

	def add(arg)
		if arg.class == String
			@entries[arg] = nil
		else
			@entries = entries.merge(arg)
		end
	end

	def keywords
		entries.keys.sort
	end

	def include?(arg)
		@entries.has_key?(arg)
	end

	def find(arg)
		@entries.select {|k, v| k.start_with?(arg)}
	end

	def printable
		@entries.sort.map do |k, v|
			"[#{k}] \"#{v}\""
		end.join("\n")
	end
end