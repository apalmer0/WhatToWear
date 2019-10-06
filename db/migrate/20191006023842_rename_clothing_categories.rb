class RenameClothingCategories < ActiveRecord::Migration[5.1]
  def change
    rename_table :clothing_categories, :clothing_items
    rename_column :outfit_clothing_categories, :clothing_category_id, :clothing_item_id
    rename_index :outfit_clothing_categories, :index_outfit_clothing_categories_on_clothing_category_id, :index_outfit_clothing_categories_on_clothing_item_id
  end
end
