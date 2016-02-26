require 'httparty'
require 'pry'

class PKSearch
  attr_accessor :name_or_id

  def initialize(name_or_id)
    @name_or_id = name_or_id
    #need to initialize get_name_or_id
  end

  def get_name_or_id(name_or_id)
    if name_or_id.to_i == 0
      name = name_or_id
      id = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name}")["id"]
    else
      id = name_or_id
      name = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{id}")["name"]
    end
  end

  # type = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["types"][1]["type"]["name"]
  # type2 = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["types"][0]["type"]["name"]
    # puts "Types: #{types[1]} #{types[2]}"
end
