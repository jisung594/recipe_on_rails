class Ingredient < ApplicationRecord
  belongs_to :post

  validates :name, uniqueness: true
end
