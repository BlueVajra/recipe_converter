class RecipeConverter
  def initialize(ingredients)
    @ingredients = ingredients
    @ingredient_tablespoons = []
    @ingredient_cup = []
  end

  def to_tablespoons
    @ingredients.each do |ingredient|
      ingredient.each do |key, value|
        @ingredient_tablespoons << {key => (value.to_i/15)}
      end
    end
    @ingredient_tablespoons
  end
end