# 05_silly_blocks

def reverser
	yield.split(' ').map {|word| word.reverse}.join(' ')
end

def adder(n=1)
	yield + n
end

# arg default set to 1 so it runs at least once
def repeater(arg=1)
	arg.times do
		yield
	end
end








