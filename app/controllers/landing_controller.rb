class LandingController < ApplicationController
  def index
    @recipes = Recipe.all
  end
end
