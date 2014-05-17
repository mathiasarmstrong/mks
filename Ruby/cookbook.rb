
class Cookbook
	attr_accessor :title
	
	def initialize(name)
		@title = name
	    @recipes =[]
	end
	def recipes
		return @recipes
	end
	def add_recipe(recipe)
		@recipes<<recipe
		puts "Added a recipe to the collection: " + recipe.title
	end
	def recipe_titles
		@recipes.each{|arg| puts arg.title}
	end
	def recipe_ingredients
		@recipes.each{|arg| puts "These are the ingredients for #{arg.title}: #{arg.ingredients}"}
	end
end

class Recipe
	attr_accessor :title, :ingredients, :steps 
	def initialize(name, ingredients, directions)
		@title = name
		@ingredients = ingredients
		@steps = directions
	end
end





# mex_cuisine = Cookbook.new("Mexican Cooking")

# burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])
