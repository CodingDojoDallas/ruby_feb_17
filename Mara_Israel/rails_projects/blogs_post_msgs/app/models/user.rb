class User < ApplicationRecord
	has_many :comments
	has_many :comments, as: :commentable
	has_many :owners
	has_many :blogs, through: :owners
	has_many :messages
	has_many :posts

	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, :email, presence: true
	validates :email, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}
end
