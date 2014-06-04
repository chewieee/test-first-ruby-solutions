# 12_rpn_calculator

class RPNCalculator

	def value
		@operands[-1]
	end 

	def initialize
		@operands = []
	end

	def push(arg)
		@operands.push(arg.to_f)
	end

	def plus
		push(pop + pop)
	end

	def minus
		value = pop
		push(pop - value)
	end

	def divide
		value = pop
		push(pop / value)
	end

	def times
		push(pop * pop)
	end

	def pop
		raise "calculator is empty" if @operands.empty?
		@operands.pop
	end

	def tokens(arg)
		arg.split(' ').map do |x|
			if %w{+ - * /}.include?(x)
				x.to_sym
			else
				x.to_i
			end
		end
	end

	def evaluate(arg)
		tokens(arg).each do |x|

			case x

			

			when :*
				times

			when :+
				plus

			when :-
				minus

			when :/
				divide

			else
				push(x)
			end
		end
		value		
	end

end


# Test Area 