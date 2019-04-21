if Rails.env.development?
  OutfitClothingCategory.destroy_all
  ClothingCategory.destroy_all
  Outfit.destroy_all

  CATEGORIES = [
    "Short Socks",
    "Long Socks",
    "Sneakers",
    "Flip Flops",
    "Boots",
    "Boxers",
    "Long underwear",
    "Light shorts",
    "Heavy shorts",
    "Light pants",
    "Heavy pants",
    "Rain pants",
    "Gloves",
    "Tank top",
    "Short sleeve",
    "Long sleeve",
    "Light Sweater",
    "Heavy Sweater",
    "Light Hoodie",
    "Heavy Hoodie",
    "Light jacket",
    "Heavy jacket",
    "Rain Jacket",
    "Scarf",
    "Beanie",
  ]

  CATEGORIES.each { |category| ClothingCategory.create(name: category) }
end
