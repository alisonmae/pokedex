require 'httparty'
require 'pry'

class PKSearch
  attr_accessor :name_or_id

  def initialize(name_or_id)
    @name_or_id = name_or_id
    response = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")
    id = response["id"]
    name = response["name"]

    puts "Pokemon name: #{name}"
    puts ("Pokedex #: #{id}")
  end
end
