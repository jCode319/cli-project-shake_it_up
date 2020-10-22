class Cocktail

    attr_accessor :name , :technique, :url

    @@all = []

    def self.all 
        @@all
    end

    def initialize(name, technique, url)
        @name = name
        @spirit_class = spirit_class
        @url = url
        @@all << self
    end

    

    

end
