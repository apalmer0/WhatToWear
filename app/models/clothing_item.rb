class ClothingItem < ApplicationRecord
  has_many :outfit_clothing_items
  has_many :outfits, through: :outfit_clothing_items

  validates :name, presence: true
end
