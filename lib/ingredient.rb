class Ingredient

    attr_accessor :name , :description, :ingredient

    @@all = []

    def self.all 
        @@all
    end

    def initialize(name, description, ingredient)
        @name = name
        @description = description
        @ingredient = ingredient
        @@all << self
    end

    

    

end
