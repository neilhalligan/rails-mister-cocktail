# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'nokogiri'
require 'open-uri'
require 'json'

# OpenURI::Buffer.send :remove_const, 'StringMax'
# OpenURI::Buffer.const_set 'StringMax', 0

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

doc = Nokogiri::HTML(open(url)) #.read().inspect
JSON.parse(doc)["drinks"].each do |drink|
  Ingredient.create(name: drink.values[0])
end
# doc["drinks"].values.each do |ingredient|
#
# end

