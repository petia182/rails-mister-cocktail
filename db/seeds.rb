require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
user = JSON.parse(ingredients_serialized)

user["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end
