Rails.application.routes.draw do
  root "outfits#index"
  resources :outfits do
    resources :outfit_clothing_categories, only: :create
  end
end
