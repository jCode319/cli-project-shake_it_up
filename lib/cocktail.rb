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

    def self.print_all_cocktails
        @@all.each_with_index do |cocktail, index|
        # puts "^" * 32
        puts "#{index+1}. #{cocktail.name}"
        # puts ""
        # sleep(0.01)
        end
    end

     def self.print_shaken_cocktails(technique)
        self.all.each_with_index do |cocktail, index|
            cocktail.technique == technique
        # puts "^" * 32
        puts "#{index+1}. #{cocktail.name}"
        # puts ""
        # sleep(0.01)
        end
    end

    def self.print_single_cocktail(instances)
        instances.each do |cocktail|
        puts ""
        puts "^" * 50
        puts "#{cocktail.name}" #calling an instance method on the "cocktail" class (attribute reader)
        puts ""
        puts "Description:\n#{cocktail.description}"
        puts ""
        puts "Ingredients:\n#{cocktail.ingredient_list}"
        puts ""
        
        end
    end
end