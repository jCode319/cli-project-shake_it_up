require "nokogiri"
require "open-uri"
require "pry"

        base_url = "https://www.muscleandfitness.com/workout-routines/"
        html = open(base_url) 
        parsed_workout = Nokogiri::HTML(html)
        routines = parsed_workout.css('.workout-body-parts')

        # binding.pry
        routines.each do |routine|
            puts "*" * 20
            puts "Body: #{routine.css('a').children[3].text}"
            puts "URL: #{routine.css('a')[0].attr('href')}"
            # binding.pry
        end
            