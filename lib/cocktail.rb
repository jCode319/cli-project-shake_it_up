class Cocktail
 
    attr_accessor :name , :technique, :second_url, :description, :ingredient_list

    @@all = []

    def self.all 
        #@@all = @@all.sort_by { |a| a.name }
        @@all
    end

    def initialize(name, technique, second_url)
        @name = name
        @technique = technique
        @second_url = second_url
        save
    end

    def save
        @@all << self
    end 

    def self.print_all_cocktails
        #check_for_shaken_cocktails
        @@all.each_with_index do |cocktail, index|
        puts "^" * 32
        puts "#{index+1}. #{cocktail.name}"
        puts ""
        sleep(0.01)
        end
    end

     def self.print_shaken_cocktails(technique)
        self.all.each_with_index do |cocktail, index|
            cocktail.technique == technique
        puts "^" * 32
        puts "#{index+1}. #{cocktail.name}"
        puts ""
        sleep(0.01)
        end
    end

    def self.print_cocktails(instances)
        instances.each do |cocktail|
        puts ""
        puts "^" * 32
        puts "#{cocktail.name}"
        puts ""
        puts "#{cocktail.description}"
        puts "#{cocktail.ingredient_list}"
        end
    end
  

    # def add_details
    #     check_for_cocktails
    #     @description
    #     @ingredient_list
    # end
# define, add details, argument = name of cocktail.
# finding cocktail and push info in
# call this menthod in CLI

end