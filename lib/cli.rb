#require_relative "../environment.rb"
#require 'pry'
class CLI

        def run 
        #     puts "*" * 80
        #     puts "Hi, Welcome to the Shake-It-Up CLI Application"
        #     puts "The best place to view ingredients of your favorite cocktails!"
        #     sleep(1)
        #     puts "Shaking things up ...this might take a second!"
        #     until user_input == "exit"
        #     select_cocktail
        #     select_more_info
        #     what_next
        #     end 
        #     goodbye
        # end

        # until user_input == "exit"
        puts "*" * 70
        puts ""
        puts "Hi, Welcome to the Shake-It-Up CLI Application"
        puts ""
        puts "The best place to view ingredients of your favorite cocktails!"
        puts ""
        puts "*" *70
        puts "Shaking things up ...this might take a second!"
        sleep(1)
        Scraper.new.first_scrape
        #binding.pry
        puts ""
        puts "Done!"
        puts ""

        puts "Please choose a cocktail making method?\nEnter 1 to view All Cocktails or Enter 2 to view all Cocktail Techniques\nEnter 3 to exit" 
        puts ""
        user_input = gets.chomp.to_i
        instances = []
        if user_input == 1
            puts ""
            Cocktail.print_all_cocktails
            puts "Enter the number associated with your cocktail listed above for more details."
            cocktail_select = gets.chomp.to_i
            # second_scrape_instance = Cocktail.all[cocktail_select-1].second_url #user selects a cocktail and that info is ran 
            # binding.pry
            instances << Cocktail.all[cocktail_select-1]
            Cocktail.print_single_cocktail(instances)

            # Cocktail.print_details(instances) 
        elsif user_input == 2
            #binding.pry
                    Technique.all.each_with_index do |tech_instance, index|
                    puts ""
                    puts "#{index+1}. #{tech_instance.name}"
                    end
            puts "Please choose a technique."
            technique_selection = gets.chomp.to_i - 1

            cocktails_with_matching_technique = Technique.all[technique_selection].cocktail_by_technique
            Cocktail.print_shaken_cocktails(cocktails_with_matching_technique)

            puts "Enter the number associated with your cocktail listed above for more details."
            cocktail_selection = gets.chomp.to_i - 1

            instances << cocktails_with_matching_technique[cocktail_selection]
            #binding.pry
            Cocktail.print_single_cocktail(instances)
            
            #binding.pry
            # Cocktail.print_shaken_cocktails("shaken")
            
            # cocktail_select = gets.chomp.to_i
            # instances << Cocktail.all[cocktail_select-1]
            # Cocktail.print_cocktails(instances)
        else
           puts "Sorry, I don't recognzie that entry. Please try again:"

            # end
        end
    end
end


#   def what_next
#     puts "Are you done? Type 'exit' to exit or hit any key to see more events."
#     user_input = gets.strip
#   end 
  
#   def goodbye
#     puts "Cheers to the Good Life!"
#   end 
