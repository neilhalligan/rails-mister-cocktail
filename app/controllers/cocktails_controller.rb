class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :destroy]

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
    Cocktail.create(set_params)
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def set_params
    params.require(:cocktail).permit(:name)
  end
end
