class Scraper

    def initialize
        @base_url = "https://www.liquor.com"
    end
    
    def first_scrape
        html = open(@base_url + "/cocktails-shaken-4779409") 
        parsed_cocktails = Nokogiri::HTML(html)
        cocktail_elements = parsed_cocktails.css('.card-list')

        cocktail_elements.each do |cocktail|
            cocktail_name = cocktail.css('.card__underline')[0].text.strip
            second_url = cocktail.css('a')[0].attr('href')

            description_and_ingredients_hash = self.second_scrape(second_url)
        
            cocktails = Cocktail.find_or_create_by_name(cocktail_name)
            
            ingredient_list = Ingredient.new(cocktail_name, description_and_ingredients_hash[:description], description_and_ingredients_hash[:ingredient])
        end
    end
    
    def second_scrape(second_url)
        second_html = open(second_url) 
        second_parsed_cocktails = Nokogiri::HTML(second_html)
        details = second_parsed_cocktails.css('.chop-content')
        description = details.css(".text-passage")[0].text.strip
        ingredient_list = details.css(".ingredient-list")[0].children.text.tr("\n"," ")
        return {description: description, ingredient: ingredient_list}
    end
end

        #    cocktails -< ingredients

        # ingredient_header = details.css("h2")[0].text
