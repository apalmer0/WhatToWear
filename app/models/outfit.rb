class Outfit < ApplicationRecord
  has_many :outfit_clothing_categories
  has_many :clothing_categories, through: :outfit_clothing_categories
end
