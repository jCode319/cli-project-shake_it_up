class CLI

    def run
        greeting
        menu
    end

    def greeting 

        puts "*" * 70
        puts ""
        puts "Hi, Welcome to the Cocktail-Pedia CLI App"
        puts ""
        puts "The best place to view info about your favorite cocktails!"
        puts ""
        puts "*" *70
        puts "Shaking things up ...this might take a second!"

        Scraper.new.first_scrape
        
        puts ""
        puts "Done!"
        puts ""
    end

    def menu

        puts ""
        puts "Enter 1 to view all Cocktails\nEnter 2 to view Cocktails based on they are made\nor Enter 3 to exit the program" 
        puts ""
            prompt = "> " 
            print prompt
            user_input = gets.chomp.to_i
            instances = []


        if user_input == 1
            puts ""
            Cocktail.print_all_cocktails
                
                    puts "To view more info, enter the number that matches the cocktail you would like to see."
                    cocktail_select = gets.strip.to_i
                    instances << Cocktail.all[cocktail_select-1]

            Cocktail.print_single_cocktail(instances)
                what_next

        elsif user_input == 2
            Technique.all.each_with_index do |tech_instance, index|
                puts ""
                puts "#{index+1}. #{tech_instance.name}"
            end
                
                puts ""
                puts "Enter 1 to view shaken cocktail."
                print prompt

                technique_selection = gets.chomp.to_i - 1
                cocktails_with_matching_technique = Technique.all[technique_selection].cocktail_by_technique
            
            Cocktail.print_shaken_cocktails(cocktails_with_matching_technique)
            
                puts ""
                puts "To view more info, enter the number that matches the cocktail you would like to see."
                print prompt
            
                cocktail_selection = gets.chomp.to_i - 1
                instances << cocktails_with_matching_technique[cocktail_selection]
            
            Cocktail.print_single_cocktail(instances)
                what_next

        elsif user_input == 3
                    goodbye
        else
            puts "Sorry, I don't recognzie that entry. Please try again:"
        end
    end
  
    def what_next

        puts ""
        puts "Still Thirsty?\nEnter 1 to return to the main menu or Enter 3 to exit the program."
        puts ""

        user_input = gets.strip.to_i
        
        if user_input == 1
            menu
        elsif user_input == 3
            goodbye
        else
            "Sorry, I don't recognzie that entry. Please try again:"
        end
    end 

    def goodbye
        puts ""
        puts "Cheers to the Good Life!"
        puts ""
    end 

end