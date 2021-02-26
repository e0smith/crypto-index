class POKE::CLI

    attr_accessor :names

    def run
          loading        #DISABLE FOR TESTING
          greeting
        # POKE::API.build_pokemon()
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
            sleep(1.0/90.0) 
        end
    end

    def list
        @names = POKE::Pokemon.first_generation.map {|poke| poke.name} 
        @names.each.with_index(1) do |name, index| #lists pokemon numerically 
            puts "#{index}. #{name}"
        end

        puts "-----------------------------------------------------------------------------------------"
        puts "Please select the associated number for the Pokemon you would like to learn more about..."
        puts "-----------------------------------------------------------------------------------------"
        number = input.to_i - 1
        a = POKE::Pokemon.find_pokemon(@names[number]) 
        # binding.pry#selects pokemon by number
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
        
        # binding.pry
    end
        
    def input
        x = gets.chomp
    end

    def greeting
        puts "--------------------------"
        puts "Welcome to the Pokemon API"
        puts "--------------------------"
        sleep(1)
        # puts "Please select your Pokemon"
    end

    def menu
        puts "Enter 'new' to see a new pokemon or type exit to close the program"
        user_input = input
        if user_input == "new" || user_input == "NEW"
            puts "Please enter a new number"
            number = input.to_i - 1
            if number >= 0 && number <= POKE::Pokemon.first_generation.count - 1
                a = POKE::Pokemon.find_pokemon(@names[number])
                puts "NAME - #{a.name.capitalize}"
                puts "ABILITIE(S) - #{a.abilities.join(", ")}"
                puts "TYPE(S) - #{a.type.join(", ")}"
            else
                puts "invalid entry"
            end
            menu
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
        else
            puts "invalid entry"
            menu
        end
    end

end
