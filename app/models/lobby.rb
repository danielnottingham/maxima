class Lobby < ApplicationRecord
  validates :name, :document, :entry, :exit, presence: true
  #scope :search_by_key, ->(query) { where('name ilike ?', "%#{query}%") }
end
