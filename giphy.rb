require 'httparty'
require 'pry'
require_relative 'pksearch.rb'

class Giphy

attr_accessor :url, :response, :pokemon_array, :random_pokemon_hash, :pokemon_url


  def initialize(pk.name)
    @pk.name = name
  end
# Open Pokemon gif based on keyword

url = "http://api.giphy.com/v1/gifs/search?q=#{pk.name}&api_key=dc6zaTOxFJmzC"
response = HTTParty.get(url)
pokemon_array = response["data"]
random_pokemon_hash = pokemon_array.sample
pokemon_url = random_pokemon_hash["url"]
system("open #{pokemon_url}")


puts "Goodye!"
end
