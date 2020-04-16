class Character
    attr_accessor :name, :quotes

    @@all = []

    def initialize(name)
        @name = name
        @quotes = []
        @@all << self
    end

    def self.all
        @@all
    end


end
