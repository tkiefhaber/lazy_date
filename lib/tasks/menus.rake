desc "Get menus"
task :get_menus => :environment do

require 'nokogiri'
require 'open-uri'
require 'mechanize'

  1.upto(3) do |page_num|
    agent = Mechanize.new
    # doc = Nokogiri::HTML(open("https://www.livingsocial.com/menus/city/36?page=#{page_num}"))
    # puts doc.css("h2.name").text
    # .each do |restaurant|
    #   location = Nokogiri::HTML(open("https://livingsocial.com/menus/locations/#{restaurant}"))
    #   name = location.css('title').text
    #   description = location.css('desc').text
    #   details = location.css('label').text
    #   puts "#{name}, #{description}, #{details}"
    # end

    td_doc = agent.get("https://livingsocial.com/menus/city/36?page=#{page_num}")
    td_doc.links_with(:href => %r{/menus/locations/}).each do |restaurant|
      individual_restaurant = restaurant.click
      info = Nokogiri::HTML(open(individual_restaurant.uri))
      name = info.css("title").text
      description = info.css("p.desc").text
      phone = info.css("div.info ul li a").text.gsub("view map", "")
      address = info.css("div.info ul li:last-child p:nth-child(2)").text.gsub("view map", "")
      puts "#{name},\n #{description},\n #{phone},\n #{address}\n-----------"
    end
  end

end