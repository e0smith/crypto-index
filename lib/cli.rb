class POKE::CLI
    attr_accessor :names

    def run
        loading
        greeting
        list
    end

    def loading
        puts "----------------------------------------------------"
        puts "---------------Loading up the Pokédex---------------"
        puts "----------------------------------------------------"
        sleep(2)
        num = 0
        while num <= 100
            puts "PROGRESS #{num}%"
            num +=1
            sleep(1.0/90.0) 
        end
    end
        
    def input
        x = gets.chomp
    end

    def greeting
        puts "--------------------------"
        puts "Welcome to the Pokémon API"
        puts "--------------------------"
        sleep(1)
    end

    def selecttion_printout
        puts "-----------------------------------------------------------------------------------------"
        puts "Please select the associated number for the Pokémon you would like to learn more about..."
        puts "-----------------------------------------------------------------------------------------"
    end

    def input_response
        number = input.to_i - 1
            if number >= 0 && number <= POKE::Pokemon.first_generation.count - 1
                a = POKE::Pokemon.find_pokemon(@names[number])
                puts "NAME - #{a.name.capitalize}"
                puts "ABILITIE(S) - #{a.abilities.join(", ")}"
                puts "TYPE(S) - #{a.type.join(", ")}"
                menu
            else
                puts "invalid entry"
                menu
            end
    end

    def list
        @names = POKE::Pokemon.first_generation.map {|poke| poke.name} 
        @names.each.with_index(1) do |name, index| #lists pokemon numerically 
            puts "#{index}. #{name}"
        end
        selecttion_printout
        input_response
    end

    def menu
        puts "--------------------------------------------------------------------"
        puts "Enter 'new' to see a new Pokémon or type 'exit' to close the program"
        puts "--------------------------------------------------------------------"
        user_input = input
        if user_input == "new" || user_input == "NEW"
            selecttion_printout
            input_response
        elsif user_input == "exit"
            puts"            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" 
            puts "            ⣿⣿⣿⣿⣿⡏⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿
            ⣿⣿⣿⣿⣿⣿⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⣿
            ⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠙⠿⠿⠿⠻⠿⠿⠟⠿⠛⠉⠀⠀⠀⠀⠀⣸⣿
            ⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿
            ⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣴⣿⣿⣿⣿
            ⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⢰⣹⡆⠀⠀⠀⠀⠀⠀⣭⣷⠀⠀⠀⠸⣿⣿⣿⣿
            ⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠈⠉⠀⠀⠤⠄⠀⠀⠀⠉⠁⠀⠀⠀⠀⢿⣿⣿⣿
            ⣿⣿⣿⣿⣿⣿⣿⣿⢾⣿⣷⠀⠀⠀⠀⡠⠤⢄⠀⠀⠀⠠⣿⣿⣷⠀⢸⣿⣿⣿
            ⣿⣿⣿⣿⣿⣿⣿⣿⡀⠉⠀⠀⠀⠀⠀⢄⠀⢀⠀⠀⠀⠀⠉⠉⠁⠀⠀⣿⣿⣿
            ⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿
            ⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿"
            puts"            ~~~~~~~~~~~GOOD BYE~~~~~~~~~~~"
            exit
        else
            puts "invalid entry"
            menu
        end
    end
end
