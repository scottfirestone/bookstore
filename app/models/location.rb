class Location < ApplicationRecord
  has_many :location_slots
  has_many :books, through: :location_slots
end
