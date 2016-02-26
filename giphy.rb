require 'httparty'
require 'pry'
require_relative 'pksearch.rb'
require_relative 'cli.rb'


# Open Pokemon gif based on keyword
url = "http://api.giphy.com/v1/gifs/search?q=#{@name}&api_key=dc6zaTOxFJmzC"
response = HTTParty.get(url)
pokemon_array = response["data"]
random_pokemon_hash = pokemon_array.sample
pokemon_url = random_pokemon_hash["url"]
binding.pry
system("open #{pokemon_url}")

puts "Goodye!"
