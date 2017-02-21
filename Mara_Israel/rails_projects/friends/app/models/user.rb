class User < ApplicationRecord
	has_many :friendships, class_name: "Friendship"
	belongs_to :friendships, class_name: "Friendship"
end
