class Cocktail
 
    attr_accessor :name , :technique, :second_url, :description, :ingredient_list

    @@all = []

    def self.all 
        @@all
    end

    def initialize(name, technique, second_url, description, ingredient_list)
        @name = name
        @technique = technique
        @second_url = second_url
        @description = description
        @ingredient_list = ingredient_list
        @@all << self
    end

    
end