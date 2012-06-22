# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create([
  {
    :name => "Asia 9",
    :description => "Slammin Asian food!",
    :link => "https://livingsocial.com/menus/locations/15/order/edit?mode=takeout",
    :delivers => false,
    :takeout => true
  },
  {
    :name => "Bottom Line",
    :description => "Simple. American. Food.",
    :link => "https://livingsocial.com/menus/locations/454/order/edit?mode=takeout",
    :delivers => false,
    :takeout => true
  },
  {
    :name => "California Tortilla - Chinatown",
    :description => "Try the turkey chili",
    :link => "https://livingsocial.com/menus/locations/21/order/edit?mode=takeout",
    :delivers => false,
    :takeout => true
  }])

Cuisine.create([
  {
    :name => "Asian"
  },
  {
    :name => "Mexican"

  },
  {
    :name => "American"

  },
  {
    :name => "Tex-Mex"
  }])

Movie.create([
  {
    :title => "The Mexican",
    :description => "Brad and Julia drive an El Camino",
    :link => "https://signup.netflix.com/movie/The_Mexican/60004456"
  },
  {
    :title => "Team America: World Police",
    :description => "America. F-Yeah",
    :link => "https://signup.netflix.com/movie/Team-America-World-Police/70011195"
  },
  {
    :title => "Kung Fu Hustle",
    :description => "This movie is way underrated",
    :link => "https://signup.netflix.com/movie/Kung_Fu_Hustle/70020728"
  }])

Category.create([
  {
    :name => "Kung Fu"
  },
  {
    :name => "Action"

  },
  {
    :name => "Comedy"
  }])