#stores data from api

class POKE::API

    @@all = []
    def initialize
        @url = "https://pokeapi.co/api/v2/pokemon?limit=151"
        get_pokemon
    end


    def self.all
        @@all
    end

    def get_pokemon
        poke_hash = HTTParty.get(@url)
        @@all << poke_hash
        #  binding.pry
    end

    def pokemon_array #NOT WORKING YET
        @@all.to_a do |poke|
            new_array << poke
        end
        binding.pry
        new_array
    end
end