class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :destroy, :edit, :update]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def destroy
    # raise
    @cocktail.destroy
    redirect_to cocktails_path
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    Cocktail.create(cocktail_params)
    redirect_to cocktails_path
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
