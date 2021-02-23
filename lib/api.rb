#stores data from api

class POKE::API

    
    def self.info
        url = "https://pokeapi.co/api/v2/pokemon?limit=151"
        response = HTTParty.get(url)
        response["results"].each do |x|
            HTTParty.get(x["url"])
            binding.pry
        end
            # = response["ability"]
        # self.build_pokemon(ability_array)

        #  binding.pry
    end

    # def build_pokemon(ability_array)
    #     ability_array.each do |pokemon_hash|
    #         Pokemon.new(pokemon_hash)
    #     binding.pry
    #     end
    # end

end