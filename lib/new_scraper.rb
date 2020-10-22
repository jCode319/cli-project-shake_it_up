require "nokogiri"
require "open-uri"
require "pry"

        base_url = "https://www.liquor.com/cocktails-shaken-4779409"
        html = open(base_url) 
        parsed_cocktails = Nokogiri::HTML(html)
        spirit = parsed_cocktails.css('.card-list__item')

        # binding.pry
        spirit.each do |cocktail|
            puts "*" * 20
            puts "Name: #{cocktail.css('.card__content')[0].text.strip}"
            puts "Type: #{cocktail.css('.card__content')[0].children[1].attr('data-tax-tag')}"
            puts "URL: #{cocktail.css('a')[0].attr('href')}"
            # binding.pry
            
            
            # cocktail_name = cocktail.css('span')[1].text.strip
            # second_url = cocktail.css('a')[0].attr('href')
            # technique = cocktail.css('.card__content')[0].children[1].attr('data-tax-tag')


            # spirit = Technique.find_or_create_by_name(name)
            # cocktail = Cocktail.new(name, technique, url)
            
            # binding.pry

            # puts "*" * 20
            # puts "#{cocktail.css('span')[1].text.strip}"
            # puts "#{cocktail.css('.card__content')[0].children[1].attr('data-tax-tag')}"
            # puts "#{cocktail.css('a')[0].attr('href')}"


        end