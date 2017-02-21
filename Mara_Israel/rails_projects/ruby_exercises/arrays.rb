my_arr = ['1', '17', '11', '25','9']

puts my_arr.at(3)

puts my_arr.fetch(3)
puts my_arr.fetch(-4)
puts my_arr.fetch(0, 'rocket')

puts my_arr.delete('17')
puts my_arr.reverse

puts my_arr.sort
puts my_arr[3..4] #slice

puts my_arr.shuffle 

new_arr = ['Mari', 'Jash']
puts new_arr.join('-')

puts my_arr.insert(-3, 22)

at = %w{mouse deer pandas}
puts at.values_at(1,2).join(' and ').upcase