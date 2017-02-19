 require_relative 'human1'
 class Ninja < Human
 	def initialize
 		@stealth = 175
 	end
 	def steal(enemy)
 		attack(enemy)
 		@health += 10
 	end
 	def get_away
 		@health -= 15
 	end
 end
 # Ninja should have a default stealth of 175
 # Ninja should have a steal method which, when invoked, attacks an object and increases the Ninjas health by 10
 # Ninja should have a get_away method which, when invoked, decreases its health by 15