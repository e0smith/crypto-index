class POKE::API

    def self.fetch_pokemon
        url = "https://pokeapi.co/api/v2/pokemon?limit=5"
        response = HTTParty.get(url)
        fetch_abilities(response["results"])
    end

    def self.fetch_abilities(results)
        results.each do |x|
            response = HTTParty.get(x["url"])
            self.build_pokemon(x["name"], response)
         binding.pry
        end
    end
    def self.build_pokemon(name, abilities)
        POKE::Pokemon.new(name, abilities)
    end
end










 # def ability_desc
    # end

# response["results"].each do |x|
# data_array = HTTParty.get(x["url"])
# self.build_pokemon(data_array)
# binding.pry

        # data_array.each do |data_hash|
        #     # binding.pry
        #     POKE::Pokemon.new(data_hash)
            
        # end