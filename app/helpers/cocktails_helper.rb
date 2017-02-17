module CocktailsHelper
  def cocktail_photo_path(cocktail)
    if cocktail.photo.present?
      cl_image_path cocktail.photo.path
    else
      "app/assets/images/stock_drink.jpg"
    end
  end
end
