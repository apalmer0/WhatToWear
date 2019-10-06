if Rails.env.development?
  OutfitClothingItem.destroy_all
  ClothingItem.destroy_all
  Outfit.destroy_all

  ITEMS = [
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

  ITEMS.each { |item| ClothingItem.create(name: item) }
end
