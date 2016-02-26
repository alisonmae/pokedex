require 'httparty'
require 'pry'

class PKSearch
  attr_accessor :name_or_id

  def initialize(name_or_id)
    @name_or_id = name_or_id

    name = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["name"]
    id = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["id"]

    system("clear")
    puts "~[Pokédex Search]~"
    puts "\nPokemon name: #{name}"
    puts ("Pokedex #: #{id}")
  end
end
