class IngredientController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name,:post_id)
  end
end
