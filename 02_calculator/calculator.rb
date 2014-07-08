# 02 Calculator

def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum (args=[])
	sum = 0
	args.each {|num| sum += num}
	sum
end

def multiply(args)
	args.inject {|memo, num| memo *= num}
end

def power(b, e)
	b ** e
end

def factorial(arg)
	result = 1
	(1..arg).each do |num|
		result *= num
		end
	result 
end