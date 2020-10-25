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

    def cocktail_by_technique
        Cocktail.all.select {|cocktail| cocktail.technique == self}   
    end


    def self.find_or_create_by_name(name) 
        found_technique = self.all.find { |technique| technique.name == name }
        if found_technique
            found_technique
        else
            self.new(name)
        end
    end

end
