
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
	def print_cookbook
	@recipes.each{|arg| arg.print_recipe}
	end

end

class Recipe
	attr_accessor :title, :ingredients, :steps 
	def initialize(name, ingredients, directions)
		@title = name
		@ingredients = ingredients
		@steps = directions
	end
	def print_recipe
		puts(@title+ "\nIngredients: \n")
		@ingredients.each_with_index{|arg, index| puts("#{index+1}: #{arg}")}
		puts("\nDirections: \n") 
		@steps.each_with_index{|arg, index| puts("#{index+1}: #{arg}")}
	end
	def add_to_stock(stock)
		@ingredients.each{|arg| stock.add_ingredient(arg)}
	end
end

class Ingredient
	attr_accessor :name, :price, :location
	def initialize(name, price=0, location = "safeway")
	@name = name
	@price = price
	@location = location
	end

end
class Stock
	attr_accessor :in_stock
	def initialize
		@in_stock = []
	end
	def add_ingredient(ingredient)
		@in_stock<<ingredient
	end

end






# mex_cuisine = Cookbook.new("Mexican Cooking")

# burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])
