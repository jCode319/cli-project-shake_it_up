require_relative "environment.rb"
require 'pry'

# class Scraper
    
    # def first_scrape
        url = "https://www.liquor.com/cocktails-shaken-4779409"
        html = open(url) 
        parsed_cocktails = Nokogiri::HTML(html)
        cocktails = parsed_cocktails.css('.card-list')
    # end
        cocktails.each do |cocktail|
             cocktail_name = cocktail.css('.card__underline')[0].text.strip
        
    # def second_scrape
        second_url = cocktail.css('a')[0].attr('href')
        second_html = open(second_url) 
        second_parsed_cocktails = Nokogiri::HTML(second_html)
        details = second_parsed_cocktails.css('.chop-content')
    # end
             description = details.css(".text-passage")[0].text.strip
             ingredients = details.css(".ingredient-list")[0].children.text.tr("\n"," ")
                    

            # Liquor.new(cocktail_name, description, ingredient)
 
            puts "*" * 25
            puts "Cocktail_Name: #{cocktail_name}"
            puts ""
            puts "Description:" 
            puts "#{description}"
            puts ""
            puts "Ingredients:"
            puts "#{ingredients}"
            puts ""

            end
# end