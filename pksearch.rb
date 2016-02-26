require 'httparty'
require 'pry'

class PKSearch
  attr_accessor :name_or_id, :name, :id

  def initialize(name_or_id)
    @name_or_id = name_or_id
    @name = get_name(name_or_id)
    @id = get_id(name_or_id)

    puts "\n~[Pokédex Search]~"
    puts "Pokemon name: #{name}"
    puts "Pokedex #: #{id}"
  end

  def get_name(name_or_id)
    if name_or_id.to_i == 0
      name_or_id = name_or_id.capitalize
    else
      HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["name"]
    end
  end

  def get_id(name_or_id)
    if name_or_id.to_i != 0
      name_or_id
    else
      HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["id"]
    end
  end
end

  # type = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["types"][1]["type"]["name"]
  # type2 = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["types"][0]["type"]["name"]
    # puts "Types: #{types[1]} #{types[2]}"
