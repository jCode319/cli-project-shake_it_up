require_relative "../environment.rb"
require 'pry'
class CLI

    def run
        puts "Hi, Welcome to the Shake-It-Up CLI Application"
        puts "The number best place to look up ingredients for your favorite cocktails."
        sleep(1)
        puts "Shaking things up ...this might take a second!"
        Scraper.new.first_scrape
        puts "Done!"
        sleep(1)
        puts "Which cocktail would you like to view?"
        sleep (1)
        puts "1. "
        puts "2. "
        puts "3. "
        puts "4. "
        puts "5. "
        puts "6. "
        puts "7. "
        puts "8. "
        puts "9. "
        puts "10. "
        puts "Enter a number 1-10 to view more info"
        
        user_input = gets.chomp
       
        if user_input == "1"
        Review.print_all_reviews_to_be_selected
        elsif
        puts "Enter a number 1-12 to view that review:"

        # review_select = gets.chomp
        # select_to_index = review_select.to_i - 1
        # Review.all[select_to_index].print_full_review
        # elsif user_input == "2"
        # #write the code here to display all of the genres
        end
    end
# binding.pry
end