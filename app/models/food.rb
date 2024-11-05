# frozen_string_literal: true

class Food < ApplicationRecord
  validates :name, :proteins, :carbs, :fats, presence: true
  validates :name, uniqueness: true
  validate  :sum_of_nutriens_not_greater_100, if: :all_nutrients_present?

  private

  def all_nutrients_present?
    [proteins, carbs, fats].none? nil
  end

  def sum_of_nutriens_not_greater_100
    return unless (proteins || (0 + carbs) || (0 + fats) || 0) > 100

    errors.add 'Sum of nutriens can not be more then 100'
  end
end
