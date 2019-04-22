class OutfitsController < ApplicationController
  def create
    @outfit = Outfit.new(outfit_params)

    respond_to do |format|
      if @outfit.save
        format.html { redirect_to @outfit, notice: 'Item was successfully created.' }
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
  end

  def edit
    @outfit = Outfit.find(params[:id])
  end

  private

  def outfit_params
    params.permit
  end
end
