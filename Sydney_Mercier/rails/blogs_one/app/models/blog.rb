class Blog < ActiveRecord::Base
	has_many :posts, dependent: :destroy, -> { includes :messages }

	validates :name, :description, presence: true
end