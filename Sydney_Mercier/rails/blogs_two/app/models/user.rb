class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy
	has_many :messages, dependent: :destroy
	has_many :owners
	has_many :blogs, :through => :owners

	validates :first_name, :last_name, :email_address, presence: true

	def full_name
		"#{first_name} #{last_name}"
	end
end
