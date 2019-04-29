class OutfitsController < ApplicationController
  before_action :set_outfit, only: [:show, :edit, :destroy]
  before_action :set_categories, only: [:show, :edit]

  def create
    @outfit = Outfit.new

    outfit_category_ids.each do |id|
      OutfitClothingCategory.create(outfit: @outfit, clothing_category_id: id)
    end

    respond_to do |format|
      if @outfit.save
        format.html { redirect_to @outfit, notice: 'Outfit was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @categories ||= ClothingCategory.all
    @outfit = Outfit.new
  end

  def index
    @outfits = Outfit.all
  end

  def show
  end

  def edit
  end

  def destroy
    @outfit.destroy
    respond_to do |format|
      format.html { redirect_to outfits_url, notice: 'Outfit was successfully destroyed.' }
    end
  end

  private

  def outfit_params
    params.require(:outfit)
  end

  def outfit_category_ids
    outfit_params.require(:outfit_clothing_categories)
  end

  def set_outfit
    @outfit = Outfit.find(params[:id])
  end

  def set_categories
    @categories = @outfit.clothing_categories
  end
end
