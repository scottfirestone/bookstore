class Book < ApplicationRecord
  has_one :location_slot, dependent: :destroy
  has_one :location, through: :location_slot
end
