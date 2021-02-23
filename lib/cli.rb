class POKE::CLI
    #inputs go here
    def run
        # loading        #DISABLE FOR TESTING
        greeting
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
        puts "Please press enter to see your selection of pokemon..."
    end
    
end
 