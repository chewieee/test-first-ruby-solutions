# 01_temperature

# Converts Fahrenheit to Celsius
def ftoc(temp)
	(temp - 32) * 5/9.to_f
end

# Converts Celsius to Fahrenheit
def ctof(temp)
	(temp * 9/5.to_f) + 32
end