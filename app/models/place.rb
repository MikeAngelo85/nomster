class Place < ApplicationRecord
  belongs_to :user
  has_many :comments

    geocoded_by :address
    after_validation :geocode
    
  validates :name, length: { minimum: 2}, presence: true
  validates :address, presence: true
end
