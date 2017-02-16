class Ingredient < ApplicationRecord
  has_many :doses, :dependent => :restrict_with_exception

  validates :name, presence: true, uniqueness: true

  # before_destroy :check_for_cocktails
  # has_many :cocktails, through: :doses #, :dependent => :restrict_with_error

  private

  # def check_for_cocktails
  #   if cocktails.count > 0
  #     errors.add_to_base("cannot delete ingredient being used by cocktail")
  #     return false
  #   end
  # end
end
