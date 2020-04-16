class Cli
    def run

        puts " "
        puts "Welcome to Breaking Quotes"
        puts " "
        puts "Enter 'list' to see all characters, 'random' to get a random quote, or 'exit' to quit"

        input = ""

        while input != "exit"

            input = gets.strip.downcase

            case input
            
            when "list"
                Api.get_list
                
            when "random"
                Api.random_quote
            end

        end
        
    end
end
