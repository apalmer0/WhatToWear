class OutfitClothingCategory < ApplicationRecord
  belongs_to :outfit
  belongs_to :clothing_category
end
