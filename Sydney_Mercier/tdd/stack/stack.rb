class Stack
	attr_accessor :data_store

	def initialize
		@data_store = [5, 7, 6]
	end

	def back
		@data_store.last
	end

	def push(val=0)
		@data_store.insert(-1, val)
	end

	def pop
		back
		@data_store.delete_at(-1)
	end
end