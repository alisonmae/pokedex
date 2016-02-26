require 'httparty'
require 'pry'

class PKSearch
  attr_accessor :name_or_id, :name, :id, :type, :type2

  def initialize(name_or_id)
    @name_or_id = name_or_id
    @name = get_name(name_or_id)
    @id = get_id(name_or_id)

    # type = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["types"][1]["type"]["name"]
    # type2 = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["types"][0]["type"]["name"]
    #
    # binding.pry
    #
    # if type2 != nil
    #   puts "Type: #{type}  |  Type-2: #{type2}"
    # else
    #   puts "Type: #{type}"
    # end
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

  # def get_types(name_or_id)
  #   type = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["types"][1]["type"]["name"]
  #   type2 = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{name_or_id}")["types"][0]["type"]["name"]
