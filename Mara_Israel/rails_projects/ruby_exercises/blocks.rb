def test
	puts "You are in the method"
	yield
	puts "You are again back to the method"
	yield
end
test { puts "You are in the block"}

def test
	yield(5)
	puts "You are in the method test"
	yield(100)
end
test {|i| puts "You are in the block #{i}"}

def square(num)
	puts "num is #{num}"

	x = yield(num) # 25
	puts "x has a value of #{yield(num)}"

	y = yield(num) * x #25 x 25 = 625
	puts "y has a value of #{y}"
end

square(5) {|i| i*i}

