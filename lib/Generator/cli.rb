class Cli
    def run

        puts " "
        puts "Welcome to Breaking Quotes"
        puts " "
        puts "Enter 'list' to see all Breaking Bad characters, 'random' to get a random quote, or 'exit' to quit"
        puts " "

        input = ""

        while input != "exit"

            input = gets.strip.downcase

            case input
            
            when "list"
                Api.get_list
                puts " "
                puts "Enter a characters number to get some of their famous quotes or 'list to see the character list again;"
                puts " "

                input = gets.strip.to_i
                if input > 0 && input <= 63
                    puts "Test"
                else
                    puts "Select a valid number please."
                end

            when "random"
                Api.random_quote
            end

        end
        
    end
end
