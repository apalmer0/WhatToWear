class AddWornOnToOutfits < ActiveRecord::Migration[5.1]
  def change
    add_column :outfits, :worn_on, :datetime
  end
end
