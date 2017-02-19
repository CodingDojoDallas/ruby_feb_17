class Planet
	attr_accessor :name, :description, :population

	def initialize(name, description, population)
		@name = name
		@description = description
		@population = population
	end
end

class SolarSystem
	attr_accessor :name, :planets

	def initialize(name='Andromeda')
		@name = name
		@planets = Array.new
	end

	def add_planet(planet)
		if planet.class.ancestors.include?(Planet)
			@planets.push(planet)
		else
			p "not a planet"
		end
	end

	def get_count
		@planets.length
	end

	def supernova
		@planets = Array.new
	end
end