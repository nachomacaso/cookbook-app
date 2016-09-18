class RecipesController < ApplicationController

  before_action :authenticate_user!, except:[:index, :new]

  def index
    @recipes = Recipe.all
    sort_attribute = params[:sort]
    search_term = params[:search_term]

    if search_term
      fuzzy_search_term = "%#{search_term}%"
      @recipes = @recipes.where("title ILIKE ?", fuzzy_search_term)
    end

    if sort_attribute
      @recipes = @recipes.order(sort_attribute)
    end
  end

  def new

  end

  def create
    @recipe = Recipe.create(title: params[:title],
                            user_id: current_user.id,
                            prep_time: params[:prep_time],
                            ingredients: params[:ingredients],
                            directions: params[:directions],
                            image: params[:image])
    # Written individually
    # @recipe.title = params[:title]
    # @recipe.title = params[:chef]
    # @recipe.title = params[:prep_time]
    # @recipe.title = params[:ingredients]
    # @recipe.title = params[:directions
    # @recipe.save
    flash[:success] = "New Recipe Created"
    redirect_to "/recipes/#{@recipe.id}"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    # same as update
    # @recipe.title = params[:title]
    # @recipe.chef = params[:chef]
    # @recipe.prep_time = params[:prep_time]
    # @recipe.ingredients = params[:ingredients]
    # @recipe.directions = params[:directions]
    # @recipe.save

    # this is also same as update
    # @recipe.assign_attributes(title: params[:title],
    #                           chef: params[:chef],
    #                           prep_time: params[:prep_time],
    #                           ingredients: params[:ingredients],
    #                           directions: params[:directions])
    # @recipe.save

    @recipe.update(title: params[:title],
                   prep_time: params[:prep_time],
                   ingredients: params[:ingredients],
                   directions: params[:directions],
                   image: params[:image])

    flash[:success] = "Recipe Updated"
    # render '/recipes/:id'
    redirect_to "/recipes/#{@recipe.id}"
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    flash[:warning] = "Annndddd It's GONE!"
    redirect_to '/recipes'
  end
end
