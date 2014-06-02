# 02_calculator

def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array=0)
	sum = 0
	array.each {|num| sum += num}
	sum
end

def multiply(nums)
	# Setting prod to 0 would always result in 0
	prod = 1
	nums.each {|num| prod *= num}
	prod
end

def power(base, exp)
	# Simple form
	# base ** exp

	# Using iteration
	c = 0
	prod = 1
	while c < exp
		prod *= base
		c += 1
	end
	prod
end

def factorial(num)
	return 1 if num == 0
	(1..num).inject { |prod, x| prod * x}
end
