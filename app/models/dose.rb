class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :ingredient, uniqueness: true

end
