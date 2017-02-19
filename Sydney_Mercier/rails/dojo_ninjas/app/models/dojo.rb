class Dojo < ActiveRecord::Base
	has_many :ninjas, dependent: :destroy

	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :city, presence: true
	validates :state, presence: true, length: { is: 2 }
end
