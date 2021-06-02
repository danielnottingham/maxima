class Vehicle < ApplicationRecord
  scope :search_by_key, ->(query) { where('driver ilike ?', "%#{query}%") }
end
