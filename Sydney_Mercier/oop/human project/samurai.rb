 require_relative 'human1'
 class Samurai < Human
 	@@no_of_samurai = 0
 	def initialize
 		@health = 200
 		@@no_of_samurai += 1
 	end
 	def death_blow(enemy)
 		enemy.health = 0
 	end
 	def meditate
 		@health = 200
 	end
 	def how_many
 		puts @@no_of_samurai
 	end
 end
 # Samurai should have a default health of 200
 # Samurai should have method called death_blow, which when invoked, attacks an object and decreases its health to 0
 # Samurai should have a method called meditate, which when invoked, heals the Samurai back to full health
 # Samurai should have a class method called how_many, which when invoked, displays how many Samurai's there are