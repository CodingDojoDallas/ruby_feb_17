class Friendship < ApplicationRecord
  has_many :friendships, class_name: "Friendship"
  belongs_to :user
end
