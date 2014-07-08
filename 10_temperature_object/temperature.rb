# Temperature Object

class Temperature


	def initialize(opts={})
		if opts.key?(:f)
			@c = (opts[:f] - 32) * 5.0/9.0
		else
			@c = opts[:c]
		end
	end

	def in_fahrenheit
		(@c * 9.0/5.0) + 32
	end

	def in_celsius
		@c
	end

	def self.from_celsius(arg)
		Temperature.new(:c => arg)
	end

	def self.from_fahrenheit(arg)
		Temperature.new(:f => arg)
	end

end

class Celsius < Temperature
	def initialize(arg)
		super(:c => arg)
	end
end

class Fahrenheit < Temperature
	def initialize(arg)
		super(:f => arg)
	end
end