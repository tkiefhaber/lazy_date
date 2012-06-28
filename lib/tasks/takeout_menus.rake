desc "Get menus"
task :get_takeout_menus => :environment do

require 'nokogiri'
require 'open-uri'
require 'mechanize'

  takeout = Mechanize.new
  takeout_index = takeout.get("https://livingsocial.com/menus/locations?mode=takeout")
    takeout_index.links_with(:href => %r{/menus/locations/category/}).each do |category|
      individual_category = category.click

        1.upto(10) do |page_num|
          agent = Mechanize.new

          td_doc = agent.get("https://livingsocial.com/menus/locations/category/#{category}?page=#{page_num}")
          td_doc.links_with(:href => %r{/menus/locations/+\d}).each do |restaurant|
            individual_restaurant = restaurant.click
            info = Nokogiri::HTML(open(individual_restaurant.uri))
            name = info.css(".title").text.split(":")[0]
            description = info.css("p.desc").text
            image_url = info.at(".preview")["src"]
            link = info.at(".footer a")["href"]
            restaurant_cuisine = category.to_s.gsub(/[^a-zA-Z ]/, '').strip

            db_takeout_restaurant = Restaurant.find_or_initialize_by_name(name)
            db_takeout_restaurant.description = description
            db_takeout_restaurant.link = "https://livingsocial.com" + link
            db_takeout_restaurant.image_url = image_url
            db_takeout_restaurant.save

            c = Cuisine.find_or_create_by_name(restaurant_cuisine)
            db_takeout_restaurant.cuisines << c

            puts db_takeout_restaurant.name
            
          end
        end
    end
end