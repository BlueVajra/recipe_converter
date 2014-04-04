require 'spec_helper'
require 'recipe_converter'

describe RecipeConverter do

  it "takes a list of ingredients and converts to tablespoons" do

    recipe = RecipeConverter.new(
      [{"flour" => 90},
       {"chocolate" => 60}])

    actual = recipe.to_tablespoons
    expected = [{"flour" => 6},
              {"chocolate" => 4}]

    expect(actual).to eq expected
  end

end