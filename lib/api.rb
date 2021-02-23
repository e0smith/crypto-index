#stores data from api

class POKE::API

    def initialize
        @url = "https://pokeapi.co/api/v2/pokemon?limit=151"
    end


    def get_pokemon
        poke_hash = HTTParty.get(@url)
        binding.pry
    end
end