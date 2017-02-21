class Dojo < ApplicationRecord
	has_many :ninjas, dependent: :destroy

	validates :name, :city, :state, presence: true
	validates_length_of :state , minimum: 2, maximum: 2
end
