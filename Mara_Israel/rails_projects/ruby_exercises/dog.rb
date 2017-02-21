require_relative 'mammal'
class Dog < Mammal
	def pet
		@health += 5
		self
	end
	def walk
		@health -= 1
		self
	end
	def run
		@health -= 10
		self
	end
end

Danny = Dog.new
Danny.walk.walk.walk.run.run.pet.display_health 

