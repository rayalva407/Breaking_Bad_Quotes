class Cli
    def run

        puts " "
        puts "Welcome to Breaking Quotes"
        puts " "
        puts "Enter 'list' to see all Breaking Bad characters, 'random' to get a random quote, or 'exit' to quit"
        puts " "
        Api.get_list
        input = ""

        while input != "exit"

            input = gets.strip.downcase

            case input
            
            when "list"
                print_characters
                puts " "
                puts "Enter a characters number to get some of their famous quotes."
                puts " "
                

                input = gets.strip.to_i

                if input > 0 && input <= 63
                    Api.character_quotes(Character.all[input.to_i - 1]) if Character.all[input.to_i - 1].quotes.length == 0
                    Character.all[input.to_i - 1].quotes.each.with_index do |quote, i|
                        puts " "
                        puts "#{i}. #{quote} -- #{Character.all[input.to_i - 1].name}"
                    end
                elsif input < 0 || input > 63
                    puts "Select a valid number please"
                end

            when "random"
                puts " "
                Api.random_quote
                puts " "
            end

        end
        
    end

    def print_characters
        Character.all.each.with_index(1) do |char, i|
            puts "#{i}. #{char.name}"
        end
    end

end
