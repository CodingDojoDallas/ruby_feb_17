require_relative 'wizard'

RSpec.describe Wizard do
	it 'has a default health of 50 and intelligence of 25' do
		wiz = Wizard.new
		expect(wiz.health).to eq(50)
		expect(wiz.intelligence).to eq(25)
	end

	it 'has a heal method that increases health by 10' do
		wiz = Wizard.new
		wiz.heal
		expect(wiz.health).to eq(60)
	end

	it 'has an ancestor chain that includes Human' do
		wiz = Wizard.new
		expect(wiz.class.ancestors.include?(Human)).to eq(true)
	end

	it 'has a fireball method that attacks an object and reduces the objects health' do
		wiz = Wizard.new
		wiz2 = Wizard.new
		wiz.fireball(wiz2)
		expect(wiz2.health).to eq(30)
	end
end