require_relative 'mammal'
class Cat < Mammal 
	def jerk
		puts 'scratching you...'
		self
	end
	def speak
		puts "Meow"
		self
	end
	def who_am_i
		puts self
		self
	end
end

Chloe = Cat.new
Chloe.jerk.speak.breathe.who_am_i