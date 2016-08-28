class RecipesController < ApplicationController
  def one
    @recipes = Recipe.find(2)
  end

  def all
    @recipes = Recipe.all
  end
end
