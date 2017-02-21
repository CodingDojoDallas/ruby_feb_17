class Message < ApplicationRecord
	has_many :comments, as :commentable
  belongs_to :user
  belongs_to :post

  validates :author, :message, presence: true
  validates_length_of :message, minimum: 15
end
