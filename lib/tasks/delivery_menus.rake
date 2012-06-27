desc "Get menus"
task :get_delivery_menus => :environment do

require 'nokogiri'
require 'open-uri'
require 'mechanize'

  delivery = Mechanize.new
  delivery_index = delivery.get("https://livingsocial.com/menus/locations?mode=delivery")
    
    delivery_index.links_with(:href => %r{/menus/locations/category/}).each do |category|
      individual_category = category.click

        1.upto(40) do |page_num|
          agent = Mechanize.new

          td_doc = agent.get("https://livingsocial.com/menus/locations/category/#{category}?page=#{page_num}")
          td_doc.links_with(:href => %r{/menus/locations/}).each do |restaurant|
            individual_restaurant = restaurant.click
            info = Nokogiri::HTML(open(individual_restaurant.uri))
            name = info.css("title").text
            description = info.css("p.desc").text
            image_url = info.at(".preview")["src"]
            link = info.at(".footer a")["href"]
            restaurant_cuisine = category.to_s.gsub(/[^a-zA-Z ]/, '').strip

            # db_delivery_restaurant = Restaurant.find_or_initialize_by_name(name)
            # db_delivery_restaurant.name = name
            # db_delivery_restaurant.description = description
            # db_delivery_restaurant.link = "https://livingsocial.com" + link
            # db_delivery_restaurant.image_url = image_url
            # db_delivery_restaurant.cuisine = restaurant_cuisine
            # db_delivery_restaurant.delivers = true
            # db_delivery_restaurant.save

            puts name
            
          end
        end
    end
end