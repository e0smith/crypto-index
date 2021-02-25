class POKE::CLI

    attr_accessor :names

    def run
        loading        #DISABLE FOR TESTING
        greeting
        POKE::API.build_pokemon()
        list
    end

    def loading
        puts "----------------------------------------------------"
        puts "---------------Loading up the PokeDex---------------"
        puts "----------------------------------------------------"
        sleep(2)
        num = 0
        while num <= 100
            puts "PROGRESS #{num}%"
            num +=1
            sleep(1.0/48.0) 
        end
    end

    def list
        @names = POKE::Pokemon.first_generation.map {|p| p.name}
        @names.each.with_index(1) do |name, index|
            puts "#{index}. #{name}"
        end

        number = input.to_i - 1
        a = POKE::Pokemon.find_pokemon(@names[number])
        binding.pry
    end
        
    def input
        x = gets.chomp
    end

    def greeting
        puts "Welcome to the Pokemon API"
        # puts "Please select your Pokemon"
    end
    
end
