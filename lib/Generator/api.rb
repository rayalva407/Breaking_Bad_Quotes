class Api
    def self.get_list
        url = "https://www.breakingbadapi.com/api/characters"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(URI(uri))
        characters = JSON.parse(response.body)
        characters.each_with_index do |key, value|
            puts "#{value}. #{key["name"]}"
        end
    end

end
