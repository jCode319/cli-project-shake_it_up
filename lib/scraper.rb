#require "nokogiri"
#require "open-uri"
#require "pry"

class Scraper

    def initialize
        @base_url = "https://www.liquor.com"
    end
    
    def first_scrape
        html = open(@base_url + "/cocktails-shaken-4779409") 
        parsed_cocktails = Nokogiri::HTML(html)
        cocktail_elements = parsed_cocktails.css('.card-list__item')

        cocktail_elements.each do |cocktail|
            cocktail_name = cocktail.css('.card__content')[0].text.strip
            technique = cocktail.css('.card__content')[0].children[1].attr('data-tax-tag')
            second_url = cocktail.css('a')[0].attr('href')
                    binding.pry
            technique_instance = Technique.find_or_create_by_name(technique)
binding.pry
            cocktail = Cocktail.new(cocktail_name, technique_instance, second_url)
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



        #    technique -< cocktails

                    # description_and_ingredients_hash = self.second_scrape(second_url)
