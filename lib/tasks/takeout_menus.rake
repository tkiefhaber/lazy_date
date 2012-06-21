desc "Get menus"
task :get_takeout_menus => :environment do

require 'nokogiri'
require 'open-uri'
require 'mechanize'

  takeout = Mechanize.new
  takeout_index = takeout.open get("https://livingsocial.com/menus/locations?mode=takeout")
    takeout_index.links_with(:href => %r{/menus/locations/category/}).each do |category|
      individual_category = category.click

        1.upto(40) do |page_num|
          agent = Mechanize.new

          td_doc = agent.get("https://livingsocial.com/menus/locations/category/#{category}?page=#{page_num}")
          td_doc.links_with(:href => %r{/menus/locations/}).each do |restaurant|
            individual_restaurant = restaurant.click
            info = Nokogiri::HTML(open(individual_restaurant.uri))
            name = info.css("title").text
            description = info.css("p.desc").text
            phone = info.css("div.info ul li a").text.gsub("view map", "")
            address = info.css("div.info ul li:last-child p:nth-child(2)").text.gsub("view map", "")
            restaurant_category = category.to_s.gsub(/[^a-zA-Z ]/, '').strip

            db_takeout_restaurant = TakeoutRestaurant.find_or_initialize_by_name(name)
            db_takeout_restaurant.name = name
            db_takeout_restaurant.description = description
            db_takeout_restaurant.phone = phone
            db_takeout_restaurant.address = address
            db_takeout_restaurant.category = restaurant_category
            db_takeout_restaurant.save
          end
        end
    end
end