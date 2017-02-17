class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create, :destroy]

  def index
    @doses = Dose.all
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy # if
      redirect_to cocktail_path(@cocktail)
    # else
    #   render "cocktails/show"
    # end
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredient = Ingredient.new
  end

  def create
    @dose = Dose.new(set_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
