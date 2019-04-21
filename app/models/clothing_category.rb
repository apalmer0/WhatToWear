class ClothingCategory < ApplicationRecord
  has_many :outfit_clothing_categories
  has_many :outfits, through: :outfit_clothing_categories

  validates :name, presence: true
end
