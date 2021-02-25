class POKE::Pokemon

    attr_accessor :name, :abilities 
   @@first_generation = []

   def initialize(response)
        #  response.each do |key, value|
        #     self.class.attr_accessor(key)
        #     self.send("#{key}=", value)
        # end
    @name = response["name"]
    @abilities = response["abilities"]
    @@first_generation << self
    # binding.pry
end

    def self.first_generation
        @@first_generation
        #  binding.pry
    end

    def self.find_pokemon(name)
        @@first_generation.find {|poke| poke.name == name}
        # binding.pry
    end
end

# def t
#     testing = @@first_generation
#     c = testing["ability"]
#     binding.pry
# end



    # data_hash.each do |key, value|
    #     self.class.attr_accessor(key)
    #     self.send("#{key}=", value)
    # end
    # binding.pry