require_relative 'pksearch'

puts "Welcome to your Pokédex!"
puts "What Pokémon do you want to look up? You can search by name or Pokédex ID."
name_or_id = gets.chomp.downcase

PKSearch.new (name_or_id)

system("clear")
puts "~[Pokédex Search]~"
puts "\nPokemon name: #{name}"
puts "Pokedex #: #{id}"
