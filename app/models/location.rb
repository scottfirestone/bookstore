class Location < ApplicationRecord
  has_many :location_slots
  has_many :books, through: :location_slots

  enum location_type: %w(back table shelf)
end
