class AppleTree
	attr_accessor :height, :age, :count

	def initialize
		@age = 0
		@height = 0
		@count = 0
	end

	def year_gone_by
		@age += 1
		@height += 2
		if age > 3 and age <= 10
			@count += 5
		end
	end

	def pick_apples
		@count = 0
	end
end