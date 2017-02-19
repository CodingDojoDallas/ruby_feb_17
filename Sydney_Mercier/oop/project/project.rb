class Project
	attr_accessor :name, :description, :team_member
	def initialize(name, description)
		@name = name
		@description = description
		@team_member = 0
	end
	def elevator_pitch
		"#{@name}, #{@description}"
	end
	def add_to_team
		@team_member += 1
	end
end

project1 = Project.new("Project 1", "Description 1")
puts project1.name
project1.elevator_pitch