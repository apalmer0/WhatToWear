class Outfit < ApplicationRecord
  has_many :outfit_clothing_categories, dependent: :destroy
  has_many :clothing_categories, through: :outfit_clothing_categories

  after_initialize :set_defaults

  private

  def set_defaults
    self.worn_on ||= DateTime.current
  end
end
