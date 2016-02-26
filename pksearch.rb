require 'httparty'
require 'pry'

class PKSearch
  attr_accessor :name_or_id, :name, :id, :types_array

  def initialize(name_or_id)
    @name_or_id = name_or_id
    @name = get_name(name_or_id)
    @id = get_id(name_or_id)
    @types_array = get_types(name_or_id)
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

  def get_types(name_or_id)
    types_array = []
    i = 0
    types_hash = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["types"]

    while i <= types_hash.length-1 do
     types_array[i] = types_hash[i]["type"]["name"]
     i += 1
    end
    types_array
  end
end
