require_relative 'project'

RSpec.describe Project do
	it 'has a method elevator_pitch to explain name and description' do
		project1 = Project.new("Project 1", "description 1")
		project2 = Project.new("Project 2", "description 2")

		expect(project1.elevator_pitch).to eq("Project 1, description 1")
		expect(project2.elevator_pitch).to eq("Project 2, description 2")
	end

	it 'has a team_member attribute that increments' do
		project3 = Project.new("Project 3", "description 3")
		project3.add_to_team

		expect(project3.team_member).to eq(1)
	end
end