class Vehicle < ApplicationRecord
  validates :driver, :board, :entry, :exit, presence: true
   scope :search_by_key, ->(query) { where('driver ilike ?', "%#{query}%") }
end
