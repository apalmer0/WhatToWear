class Outfit < ApplicationRecord
  has_many :outfit_clothing_items, dependent: :destroy
  has_many :clothing_items, through: :outfit_clothing_items

  after_initialize :set_defaults

  private

  def set_defaults
    self.worn_on ||= DateTime.current
  end
end
