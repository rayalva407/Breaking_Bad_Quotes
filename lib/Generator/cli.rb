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
                    if Character.all[input - 1].quotes.length > 0
                        Character.all[input.to_i - 1].quotes.each.with_index(1) do |quote, i|
                            puts " "
                            puts "#{i}. #{quote} -- #{Character.all[input.to_i - 1].name}"
                        end
                    else
                        puts "There are no quotes for #{Character.all[input - 1].name} please try again."
                    end
                    puts "Enter 'list' to see another character's quotes, 'random' to get a random quote, or 'exit' ot quit."
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
