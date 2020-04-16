class Cli
    def run

        puts " "
        puts "Welcome to Breaking Quotes"
        puts " "
        puts "Enter 'list' to see all characters, 'random' to get a random quote, or 'exit' to quit"

        input = gets.strip.downcase
        if input = "list"
            Api.get_list
        elsif input = "random"
            Api.random_quote

        end
    end
end
