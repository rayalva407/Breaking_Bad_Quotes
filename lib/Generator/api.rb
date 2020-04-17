class Api

    def self.get_list
        url = "https://www.breakingbadapi.com/api/characters"
        response = Net::HTTP.get_response(URI(url))
        characters = JSON.parse(response.body)
        characters.each do |char|
            Character.new(char["name"])
        end
    end

    def self.random_quote
        url = "https://www.breakingbadapi.com/api/quote/random"
        response = Net::HTTP.get_response(URI(url))
        quote = JSON.parse(response.body)
        #puts "#{quote[0]["quote"]} -- #{quote[0]["author"]}"

    end

    def self.character_quotes(character)
        url = "https://www.breakingbadapi.com/api/quote?author=#{character.name.gsub(" ", "+")}"
        response = Net::HTTP.get_response(URI(url))
        quotes = JSON.parse(response.body)
        quotes.each do |quote|
            character.quotes << quote["quote"]
        end
    end

end
