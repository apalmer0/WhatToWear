class CreateOutfitClothingCategory < ActiveRecord::Migration[5.1]
  def change
    create_table :outfit_clothing_categories do |t|
      t.references :outfit, foreign_key: true, null: false
      t.references :clothing_category, foreign_key: true, null: false

      t.timestamps
    end
  end
end
