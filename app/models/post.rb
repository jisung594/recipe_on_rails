class Post < ApplicationRecord
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  has_many :directions
  accepts_nested_attributes_for :directions
  belongs_to :user
  belongs_to :category
end
