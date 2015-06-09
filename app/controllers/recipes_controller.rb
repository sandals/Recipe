class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to root_path
    else
      flash.now[:error] = 'Could not publish recipe!'
      render action: 'new'
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end
end
