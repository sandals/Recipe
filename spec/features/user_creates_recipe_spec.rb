require 'rails_helper'

RecipeFactory = Struct.new(:title, :description)

recipe = RecipeFactory.new(
  'Fried Chicken and Waffles',
  'Old family recipe for the greatest dinner on the planet!')

feature 'User creates recipe' do
  scenario 'successfully publishes recipe' do
    visit root_path

    click_link 'New Recipe'

    fill_in 'Title', with: recipe.title
    fill_in 'Description', with: recipe.description

    click_button 'Publish Recipe'

    expect(page).to have_content(recipe.title)
    expect(page).to have_content(recipe.description)
  end
end
