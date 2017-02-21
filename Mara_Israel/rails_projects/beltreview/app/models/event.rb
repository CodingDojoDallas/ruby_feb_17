class Event < ApplicationRecord
	validate :date_in_future

  belongs_to :user
  has_many :patrons, :dependent => :destroy
  has_many :users, :through => :patrons
  has_many :comments, :dependent => :destroy

  validates :name, presence: true, length: {minimum: 5, maximum: 25}
 	validates :date, presence: true
  validates :location_city, presence:true

  def date_in_future
  	if date.present? && date < Date.today
  		errors.add(:date, "must be in the future")
  	end
  end


end
 