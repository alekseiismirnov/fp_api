class Food < ApplicationRecord
  validates :name, :proteins, :carbs, :fats, presence: true
  validates :name, uniqueness: true
end
