module CocktailsHelper
  def cocktail_photo_path(cocktail)
    if cocktail.photo.present?
      cocktail.photo.path
    else
      "v1487331789/gns1pyedtf7vl8m7wbbp.jpg"
    end
  end
end
