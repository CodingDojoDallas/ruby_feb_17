 require_relative 'human1'
 class Wizard < Human
 	def initialize
 		@health = 50
 		@intelligence = 25
 	end
 	def heal
 		@health += 10
 	end
 	def fireball(enemy)
 		enemy.health -= 20
 	end
 end
 # Wizard should have a default health of 50 and intelligence of 25
 # Wizard should have a method called heal, which when invoked, heals the Wizard by 10
 # Wizard should have a method called fireball, which when invoked, decrease the health of whichever object it attacked by 20

