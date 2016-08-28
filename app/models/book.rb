class Book < ApplicationRecord
  has_one :location_slot
  has_one :location, through: :location_slot
end
