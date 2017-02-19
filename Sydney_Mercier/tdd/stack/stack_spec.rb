require_relative 'stack'

RSpec.describe Stack do
	describe 'attributes' do
		before do
			@stack = Stack.new
		end

		it "has an attribute, data_store, which displays an array of the values" do
			expect(@stack).to have_attributes(:data_store => [5, 7, 6])
		end

		it 'has an attribute, back, which displays the last value' do
			expect(@stack.back).to eq(6)
		end
	end

	describe 'behavior' do
		before do
			@stack = Stack.new
		end

		it 'has a push method which adds a new value to the end' do
			@stack.push(8)
			expect(@stack.back).to eq(8)
			@stack.push
			expect(@stack.back).to eq(0)
		end

		it 'has a pop method which removes the last value' do
			expect(@stack.data_store.length).to eq(3)
			expect(@stack.pop).to eq(6)
			expect(@stack.data_store.length).to eq(2)
		end
	end
end