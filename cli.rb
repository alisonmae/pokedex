require_relative 'pksearch'



puts "Welcome to your Pokédex!"
puts "What Pokémon do you want to look up? You can search by name or Pokédex ID."
name_or_id = gets.chomp.downcase

pk = PKSearch.new (name_or_id)

puts "\n~[Pokédex Search]~"
puts "Pokemon name: #{pk.name}"
puts "Pokedex #: #{pk.id}"



url = "http://api.giphy.com/v1/gifs/search?q=#{pk.name}&api_key=dc6zaTOxFJmzC"
response = HTTParty.get(url)
pokemon_array = response["data"]
random_pokemon_hash = pokemon_array.sample
pokemon_url = random_pokemon_hash["url"]
binding.pry
system("open #{pokemon_url}")

puts "Goodye!"
