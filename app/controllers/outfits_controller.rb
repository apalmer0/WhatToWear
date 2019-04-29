class OutfitsController < ApplicationController
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
    @outfit = Outfit.find(params[:id])
    @categories = @outfit.clothing_categories
  end

  def edit
    @outfit = Outfit.find(params[:id])
    @categories = @outfit.clothing_categories
  end

  def destroy
    @outfit = Outfit.find(params[:id])
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

  def clothing_categories
  end
end
