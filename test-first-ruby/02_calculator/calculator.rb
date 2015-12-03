def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)
	s = 0
	array.each { |x| s += x }
	s
end

def multiply(x, y = 1)
	if x.is_a?(Array)
		res = 1
		x.each { |k| res = res * k }
		res
	else
		x * y
	end
end

def power(x, y)
	x ** y
end

def factorial(x)
	res = 1
	for i in 1..x do
		res = res * i
	end
	res
end