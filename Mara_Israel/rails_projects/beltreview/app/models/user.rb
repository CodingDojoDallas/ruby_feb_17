class User < ApplicationRecord
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_many :patrons, :dependent => :destroy
  has_many :events, :through => :patrons
  has_many :comments, :dependent => :destroy

  validates :first_name, :last_name, :location_city, :password, presence: true
  validates :password, length: {minimum: 8}
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
