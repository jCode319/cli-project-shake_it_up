class Technique

    attr_accessor :name

    @@all = []

    def self.all 
        @@all
    end
    
    def initialize(name)
        @name = name
        @@all << self
    end

    # def cocktails
    #     Cocktail.all.select { |drink| drink.spirit == self }
    # end

    def self.find_or_create_by_name(name)
        found_technique = self.all.find { |technique| technique.name == name }
        if found_technique
            found_technique
        else
            self.new(name)
        end
    end



end
