x = {"first_name" => "Mari", "last_name" => "Israel"}

puts x["first_name"], x["last_name"]
puts "Your last name is Israel" if x['last_name'].eql? "Israel"

z = {:first_name => "Mari", :last_name => "Israel"}
puts "Z is", z
puts z[:first_name], z[:last_name]

puts "DELETING :first_name"
z.delete(:first_name)
puts "Z is now", z

if z.has_key?(:first_name)
	puts "Z has a key called :first_name"
else
	puts "Y does not have a key called :first_name"
end

if z.has_value? "Israel"
	puts "Z has a value called Israel"
else
	puts "Z does NOT have a value called Israel"
end