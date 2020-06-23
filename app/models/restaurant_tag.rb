class RestaurantTag < ApplicationRecord
  belongs_to :restaurant
  belongs_to :tag
  # Validates that a restaurant can't have the same tag twice (and vice-versa)
  validates_uniqueness_of :restaurant, scope: [:tag]
end
