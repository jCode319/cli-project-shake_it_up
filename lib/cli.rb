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
        puts ""
        puts "Done!"
        puts ""

        puts "Please choose a cocktail making method?\nEnter 1 to view All Cocktails or Enter 2 to view all Shaken Cocktails\nEnter 3 to exit" 
        puts ""
        user_input = gets.chomp.to_i
        instances = []
        if user_input == 1
            puts ""
            Cocktail.print_all_cocktails
            puts "to view more info and ingredients, Enter the number associated with your cocktail listed above."
            cocktail_select = gets.chomp.to_i
            # Scraper.new.second_scrape(Cocktail.all[cocktail_select-1].second_url) #user selects a cocktail and that info is ran 
            # binding.pry
            instances << Cocktail.all[cocktail_select-1]
            Cocktail.print_cocktails(instances)
            # Cocktail.print_details(instances)
            #step 1, Chris vidoe on combining second scrape into first
            #step 2, 
        elsif user_input == 2
            Cocktail.print_shaken_cocktails("shaken")
            puts "Enter the number associated with your cocktail listed above for more details."
            cocktail_select = gets.chomp.to_i
            instances << Cocktail.all[cocktail_select-1]
            Cocktail.print_cocktails(instances)
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
