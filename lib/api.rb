#stores data from api

class POKE::API

    def self.info
        input = gets.chomp
        url = "https://pokeapi.co/api/v2/pokemon/#{input}"
        response = HTTParty.get(url)
        binding.pry
    end
end