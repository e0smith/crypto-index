class POKE::Pokemon
    attr_accessor :name
    
   @@first_generation = []

    def initialize(response)
         response.each do |key, value|
            self.class.attr_accessor(key) unless key == "abilities" || key == "type" #prevents abilities from being overwritten
            self.send("#{key}=", value) unless key == "abilities" || key == "type"
        end
    @name = response["name"]
    @abilities = response["abilities"]
    @type = response["types"]
    @@first_generation << self
end

    def abilities
        @abilities.collect do |a_hash| #.collect returns new array
            a_hash["ability"]["name"]
        end
    end

    def type
        @type.collect do |a_hash| #.collect returns new array
            a_hash["type"]["name"]
        end
    end

    def self.first_generation #stores all pokemon objects
        @@first_generation
    end

    def self.find_pokemon(name) #selects pokemon 
        @@first_generation.find {|poke| poke.name == name}
    end
end
