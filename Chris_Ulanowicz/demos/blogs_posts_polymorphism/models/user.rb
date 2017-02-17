class User < ActiveRecord::Base
	has_many :comments
 	has_many :comments, as: :commentable
	has_many :owners
	has_many :blogs, through: :owners
	has_many :posts
	has_many :messages
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, :email_address, presence: true
	validates :email_address, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
