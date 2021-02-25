class POKE::Pokemon

    attr_accessor :name, :abilities 
   @@first_generation = []

   def initialize(name, abilities)
    @name = name
    @abilities = abilities
    @@first_generation << self
end

    def self.first_generation
        @@first_generation
        #  binding.pry
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