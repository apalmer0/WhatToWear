class RenameOutfitClothingCategories < ActiveRecord::Migration[5.1]
  def change
    rename_table :outfit_clothing_categories, :outfit_clothing_items
  end
end
