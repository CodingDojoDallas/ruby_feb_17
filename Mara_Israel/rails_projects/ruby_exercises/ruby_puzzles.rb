my_arr = [3,5,1,2,7,9,8,13,25,32]
sum = 0
new_arr = []

my_arr.each {|i|  if i > 10 then new_arr.push i end; sum+=i}
puts sum
print new_arr

new_arr = []
arr = ['John', "KB","Oliver","Cory","Matthew","Christopher"]
arr.each {|i| if i.length > 5 then new_arr.push i end}
puts arr.shuffle
print new_arr

alphabet = ['a', 'b', 'c', 'd','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

shuffled = alphabet.shuffle
print shuffled.last 
x = shuffled.first

if x == ('a' || 'e' || 'i' || 'o' || 'u')
	puts "A Notice" 
else 
	puts shuffled.first 
end

arr = []
list = 55.upto(100) {|i| arr.push i}
print arr.shuffle.values_at(0..9)

arr = []
list = 55.upto(100) {|i| arr.push i}
x = arr.shuffle
y = x.values_at(0..9).sort
print y
puts y.min
puts y.max 

5.times {print rand(65..90).chr }

arr = Array.new
10.times {arr.push((1..5).map{rand(65..90).chr }.join)}
puts
print arr 