class Human
	attr_accessor :strength, :intelligence, :stealth, :health
	def initialize
		@strength = 3
		@intelligence = 3
		@stealth = 3
		@health = 100
	end
	def attack(enemy)
		if enemy.class.ancestors.include?(Human)
			enemy.health -= 5
		end
	end
end