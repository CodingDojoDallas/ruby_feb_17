require_relative 'solar_system'

RSpec.describe Planet do
	describe 'attributes' do
		before do
			@planet = Planet.new('Earth', 'home world', '8 billion')
		end

		it 'has a name, description, and population' do
			expect(@planet).to have_attributes(:name => 'Earth')
			expect(@planet).to have_attributes(:description => 'home world')
			expect(@planet).to have_attributes(:population => '8 billion')
		end
	end
end

RSpec.describe SolarSystem do
	describe 'initialization' do
		before do
			@system = SolarSystem.new
		end

		it 'has a name, defaulting to Andromeda' do
			expect(@system.name).to eq('Andromeda')
			@system.name = 'Milky Way'
			expect(@system.name).to eq('Milky Way')
		end

		it 'should contain a list of all planets in it' do
			expect(@system.planets).to match_array([])
			alien1 = Planet.new('Palaven', 'turian home world', '6 billion')
			@system.add_planet(alien1)
			expect(@system.planets).to match_array([alien1])
		end
	end

	it 'has a count of how many planets are in the Solar System' do
		system = SolarSystem.new()
		expect(system.get_count).to eq(0)
		system.add_planet(Planet.new('Thessia', 'asari home world', '7 billion'))
		system.add_planet(Planet.new('Rannoch', 'quarian home world', '5 thousand geth'))
		expect(system.get_count).to eq(2)
	end

	it 'should only add planets from the Planet class' do
		system = SolarSystem.new
		expect(system.add_planet('Palaven')).to eq('not a planet')
	end

	it 'has method called supernova that destroys all planets' do
		system = SolarSystem.new()
		system.add_planet(Planet.new('Thessia', 'asari home world', '7 billion'))
		system.add_planet(Planet.new('Rannoch', 'quarian home world', '5 thousand geth'))
		system.supernova
		expect(system.get_count).to eq(0)
	end
end