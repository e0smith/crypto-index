class POKE::CLI
    def run
        # loading        #DISABLE FOR TESTING
        # greeting
        POKE::API.build_pokemon()
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

    def greeting
        puts "Welcome to the Pokemon API"
        puts "Please select your Pokemon"
    end
    
end
