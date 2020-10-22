class Cocktail

    attr_accessor :name

    @@all = []

    def self.all 
        @@all
    end
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def ingredients
        Ingredient.all.select { |drink| drink.cocktail == self }
    end

    def self.find_or_create_by_name(name)
        found_cocktail = self.all.find { |cocktail| cocktail.name == self }
        if found_cocktail
            found_cocktail
        else
            self.new(name)
        end
    end



end
