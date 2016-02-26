require 'httparty'
require 'pry'

puts "Welcome to Pokedex!"

puts "What Pokemon would you like to choose?"

# Open Pokemon gif based on keyword 
url = "http://api.giphy.com/v1/gifs/search?q=pokemon&api_key=dc6zaTOxFJmzC"
response = HTTParty.get(url)
pokemon_array = response["data"]
random_pokemon_hash = pokemon_array.sample
# .sample takes a random element / you could also do (array.length or shuffle.first)
pokemon_url = random_pokemon_hash["url"]
system("open #{cat_url}")

puts "Goodye!"
