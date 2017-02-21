# Print 1-255
1.upto(255) {|i| print i}

# Print odd number between 1-255
print 1.upto(255).find_all { |i| i % 2 == 1}

# Print Sum
x = 0 ; 0.upto(255) {|i| puts "New number: #{i} Sum: #{x+=i}"}

# Iterating through an Array
x =[1,3,5,7,9,13]; x.each {|i| print i, ","}

# Find Max
x = [-3,-5,-7]; puts x.max 

# Find Average
x = [2,10,3]; sum = 0; x.each {|i| sum+=i}; puts "Average is: #{sum/x.length}"

# Array with Odd Numbers
print (1..255).find_all {|i| i % 2 == 1}

# Greater Than y
array = [1,3,5,7]; y = 3 ; array.each {|i| puts i if i > y}

# Square the Values
x = [1,5,10,-2]; y = []; x.each {|i| y.push i * i}; print y

# Eliminate Negative Numbers
x = [1,5,10,-2]; y = []; x.each {|i| i = 0 if i < 0; y.push i}; print y 

# Max, Min, Average
x = [1,5,10,-2]; sum = 0; x.each {|i| sum+=i}; puts x.max , x.min , sum/x.length

# Shifting the values in the array
x = [1,5,10,7,-2]; print  x.values_at(1..4).push 0

# Number to string
x = [-1,-3, 2]; y = []; x.each {|i| i = "Dojo" if i < 0; y.push i}; print y