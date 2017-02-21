class Human
	attr_accessor :health, :strength, :stealth, :intelligence
	def initialize
		@health = 100
		@strength = 3
		@stealth = 3
		@intelligence = 3
		self
	end
	def attack(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -= 10
			true
		else
			false
		end
	end
end

class Wizard < Human
	def initialize
		@health = 50
		@intelligence = 25
	end

	def heal
		@health += 10
		self
	end
	def fireball(obj)
		attack(obj)
		obj.health -= 20
		self
	end
end

class Ninja < Human
	def initialize
		@stealth = 175		
	end

	def steal(obj)
		attack(obj)
		@health += 10
	end

	def get_away
		@health -= 15
	end
end

class Samurai < Human
	@samurai_counter = 0
	class << self
		attr_accessor :samurai_counter
	end

	def initialize
		@health = 200
		self.class.samurai_counter += 1
	end

	def death_blow(obj)
		attack(obj)
		obj.health = 0
	end

	def meditate
		@health = 200
	end

	def how_many
		p "There are #{self.class.samurai_counter} samurais" 
	end
end

