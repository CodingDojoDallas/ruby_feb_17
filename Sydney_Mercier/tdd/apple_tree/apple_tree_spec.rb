require_relative 'apple_tree'

RSpec.describe AppleTree do
	describe 'attributes' do
		before do
			@appletree = AppleTree.new
			@appletree.height = 12
			@appletree.age = 4
			@appletree.count = 20
		end

		it 'should have a height and age' do
			expect(@appletree).to have_attributes(:height => 12)
			expect(@appletree).to have_attributes(:age => 4)
		end

		it 'should have a count of how many apples it has' do
			expect(@appletree).to have_attributes(:count => 20)
		end
	end

	describe 'behavior' do
		before do
			@appletree = AppleTree.new
		end

		it 'should have a method called year_gone_by, which ages the tree and affects its height' do
			@appletree.year_gone_by
			expect(@appletree.height).to eq(2)
			expect(@appletree.age).to eq(1)
		end

		it 'should not grow apples the first 3 years of its life' do
			@appletree.year_gone_by
			expect(@appletree.count).to eq(0)
			@appletree.year_gone_by
			expect(@appletree.count).to eq(0)
			@appletree.year_gone_by
			expect(@appletree.count).to eq(0)
			@appletree.year_gone_by
			expect(@appletree.count).to eq(5)
		end

		it 'should have a method called pick_apples that takes all the apples off the tree' do
			@appletree.year_gone_by
			@appletree.year_gone_by
			@appletree.year_gone_by
			@appletree.year_gone_by
			@appletree.year_gone_by
			@appletree.pick_apples
			expect(@appletree.count).to eq(0)
		end

		it 'should decay and not grow apples after 10 years' do
			@appletree.year_gone_by
			@appletree.year_gone_by
			@appletree.year_gone_by
			@appletree.year_gone_by
			@appletree.year_gone_by
			@appletree.year_gone_by
			@appletree.year_gone_by
			@appletree.year_gone_by
			@appletree.year_gone_by
			@appletree.year_gone_by
			expect(@appletree.count).to eq(35)
			@appletree.year_gone_by
			expect(@appletree.count).to eq(35)
		end
	end
end