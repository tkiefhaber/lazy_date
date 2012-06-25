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
    :takeout => true,
    :image_url => "https://a248.e.akamai.net/si.lscdn.net/imgs/fa8241a2-7493-4de2-8293-66ea621f1226/139_q60.jpg"
  },
  {
    :name => "Bottom Line",
    :description => "Simple. American. Food.",
    :link => "https://livingsocial.com/menus/locations/454/order/edit?mode=takeout",
    :delivers => false,
    :takeout => true,
    :image_url => "https://a248.e.akamai.net/si.lscdn.net/imgs/25373877-21e4-4bdc-9c89-b624db4c8d3d/139_q60.jpg"
  },
  {
    :name => "Pizzoli's Pizzeria - Logan Circle",
    :description => "This is pretty good pizza and other Italian good stuff",
    :link => "https://livingsocial.com/menus/locations/6378/order/edit?mode=takeout",
    :delivers => true,
    :takeout => true,
    :image_url => "https://a248.e.akamai.net/si.lscdn.net/imgs/9511f299-f663-46aa-9a3b-8ca485228606/139_q60.jpg"
  },
  {
    :name => "Absolute Thai",
    :description => "Add some Thai to those Thighs!",
    :link => "https://livingsocial.com/menus/locations/174/order/edit?mode=takeout",
    :delivers => false,
    :takeout => true,
    :image_url => "https://a248.e.akamai.net/si.lscdn.net/imgs/72616367-5c63-4244-b20a-f79f0712b178/139_q60.jpg"
  }])

Cuisine.create([
  {
    :name => "Pizza"
  },
  {
    :name => "Italian"
  },
  {
    :name => "Sandwiches"
  },
  {
    :name => "American"
  },
  {
    :name => "Thai"
  },
  {
    :name => "Asian"
  },
  {
    :name => "Indian"
  },
  {
    :name => "Middle Eastern"
  },
  {
    :name => "Mediterranean"
  },
  {
    :name => "Burgers"
  }])

Movie.create([
  {
    :title => "Ong-Bak:The Thai Warrior",
    :description => "When a sacred Buddha statuette is stolen from Ting's (Tony Jaa) village by a shady businessman intent on realizing a profit from his ill-gotten gain, Ting takes it upon himself to reclaim the pilfered treasure by following the trail of clues to Bangkok. It turns out Ting is the right man for the job, as he possesses an impressive array of Muay Thai fighting skills that can lay out all his adversaries.",
    :link => "http://movies.netflix.com/WiMovie/Ong-Bak_The_Thai_Warrior/70020954?trkid=4368083",
    :image_url => "http://cdn-4.nflximg.com/en_us/boxshots/ghd/70020954.jpg"
  },
  {
    :title => "Drive",
    :description => "A Hollywood stuntman who moonlights as a getaway driver is lured from his isolated life by a lovely neighbor and her young son. His newfound peace is shattered, however, when her violent husband is released from prison.",
    :link => "http://movies.netflix.com/WiMovie/Drive/70189289?trkid=4419101",
    :image_url => "http://cdn-9.nflximg.com/en_us/boxshots/ghd/70189289.jpg"
  },
  {
    :title => "Justin Bieber: Never Say Never",
    :description => "This intimate documentary is the inspiring true story and rare inside look at the rise of Justin Bieber from street performer in the small town of Stratford, Ontario, to internet phenomenon and global superstar.",
    :link => "http://movies.netflix.com/WiMovie/Justin_Bieber_Never_Say_Never_Director_s_Fan_Cut/70229028?trkid=4417657",
    :image_url => "http://cdn-8.nflximg.com/en_us/boxshots/ghd/70229028.jpg"
  },
  {
    :title => "The Graduate",
    :description => "Dustin Hoffman (in his first major film role) turns in a landmark performance as a naive college graduate who is seduced by a middle-aged neighbor (Anne Bancroft) but ends up falling in love with her beautiful, young daughter (Katharine Ross). Mike Nichols won a Best Director Oscar for this 1960s classic, which boasts an immortal score from Simon and Garfunkel that includes the iconic 'Mrs. Robinson.'",
    :link => "http://movies.netflix.com/WiMovie/The_Graduate/555221?trkid=4447573",
    :image_url => "http://cdn-1.nflximg.com/en_us/boxshots/ghd/555221.jpg"
  },
  {
    :title => "8 1/2",
    :description => "Dog-tired movie director Guido Anselmi (Marcello Mastroianni) retreats to thoughts of yesteryear when his producers, his wife (Anouk Aimee) and his mistress (Sandra Milo) all pressure him to start making another movie. Director Federico Fellini's semiautobiographical rumination on the joys and rigors of filmmaking -- as well as lovers past and present -- won two Oscars: Best Foreign Language Film and Best Costume Design, Black-and-White.",
    :link => "http://movies.netflix.com/WiMovie/8_1_2/60021830?trkid=7808591",
    :image_url => "http://cdn-0.nflximg.com/en_us/boxshots/ghd/60021830.jpg"
  }])

Category.create([
  {
    :name => "Action & Adventure"
  },
  {
    :name => "Children & Family"
  },
  {
    :name => "Classics"
  },
  {
    :name => "Comedy"
  },
  {
    :name => "Documentary"
  },
  {
    :name => "Drama"
  },
  {
    :name => "Foreign"
  },
  {
    :name => "Horror"
  },
  {
    :name => "Independant"
  },
  {
    :name => "Romance"
  },
  {
    :name => "Sci-Fi"
  },
  {
    :name => "Thriller"
  }])

RestaurantCuisine.create([
  {
    :restaurant_id => 1,
    :cuisine_id => 6
  },
  {
    :restaurant_id => 2,
    :cuisine_id => 4
  },
  {
    :restaurant_id => 2,
    :cuisine_id => 3
  },
  {
    :restaurant_id => 2,
    :cuisine_id => 10
  },
  {
    :restaurant_id => 3,
    :cuisine_id => 1
  },
  {
    :restaurant_id => 3,
    :cuisine_id => 2
  },
  {
    :restaurant_id => 4,
    :cuisine_id => 5
  },
  {
    :restaurant_id => 4,
    :cuisine_id => 6
  }])


MovieCategory.create([
  {
    :movie_id => 1,
    :category_id => 1
  },
  {
    :movie_id => 1,
    :category_id => 7
  },
  {
    :movie_id => 2,
    :category_id => 12
  },
  {
    :movie_id => 2,
    :category_id => 1
  },
  {
    :movie_id => 3,
    :category_id => 2
  },
  {
    :movie_id => 3,
    :category_id => 5
  },
  {
    :movie_id => 5,
    :category_id => 6
  },
  {
    :movie_id => 5,
    :category_id => 7
  },
  {
    :movie_id => 4,
    :category_id => 3
  }])

Story.create([
  {
    :name => "Pizza Party",
    :description => "Take down some pizza, maybe a couple of brews and get into some serious action",
    :cuisine_id => 1,
    :category_id => 1,
    :image_url => "http://stockfresh.com/files/m/monkey_business/m/78/93773_stock-photo-teenage-boys-sitting-on-couch-eating-pizza-together.jpg"
  },
  {
    :name => "Talk Thai",
    :description => "Settle in for a little bit of Thai culture and cuisine",
    :cuisine_id => 5,
    :category_id => 7,
    :image_url => "http://wikitravel.org/upload/shared//thumb/5/51/Sukhothai.jpg/250px-Sukhothai.jpg"
  },
  {
    :name => "America!",
    :description => "Dine in on what made America what it is today",
    :cuisine_id => 4,
    :category_id => 3,
    :image_url => "http://free.desktopwallpaper.org/american_flag-971804.jpeg"
  },
  {
    :name => "Sophisticated Tween",
    :description => "Get your grown up on, young ladies!",
    :cuisine_id => 6,
    :category_id => 2,
    :image_url => "http://www.colourbox.com/preview/2296239-535917-moody-and-annoyed-attractive-teenager-girl-thinking-about-things.jpg"
  },
  {
    :name => "Feel Smart",
    :description => "Take a night to feel smart and read while you watch a movie",
    :cuisine_id => 2,
    :category_id => 7,
    :image_url => "http://www.cootey.com/weblog/pix/2006/einstein_tongue.jpg"
  }])


