# frozen_string_literal: true

FactoryBot.define do
  factory :food do
    name { Faker::Food.ingredient }
    carbs { rand(100) }
    fats { rand(100) }
    proteins { rand(100) }
  end
end
