require 'spec_helper'

describe "Stories" do
	context "when i'm on the story index page" do
		let!(:story) { FactoryGirl.create(:story) }

		before(:each) { visit stories_path }
		
		it "shows all possible stories" do
			page.should have_content("Story1")
		end

		it "has the option to return to the home page" do
			page.should have_content("Home")
		end

		it "has the option to create your own story" do
			page.should have_content("Create")
		end

		it "takes me to the home page when I click the home button" do
			click_on "Home"
			page.should have_content("It's been a long week")
		end

		it "takes me to the create page when I click the create button" do
			click_on "Create"
			page.should have_content("Create your own night")
		end

		let!(:cuisine) { FactoryGirl.create(:cuisine) }
		let!(:category) { FactoryGirl.create(:category) }
		let!(:restaurant) { FactoryGirl.create(:restaurant) }
		let!(:movie) { FactoryGirl.create(:movie) }
		let!(:movie_category) { FactoryGirl.create(:movie_category) }
		let!(:restaurant_cuisine) { FactoryGirl.create(:restaurant_cuisine) }
		it "takes me to the story show page when I click on the story" do
			click_on "#{Story.first.name}"
			current_url.should == story_url(1)
		end
	end

	context "when I'm on the story show page" do
		let!(:story) { FactoryGirl.create(:story) }
		let!(:cuisine) { FactoryGirl.create(:cuisine) }
		let!(:restaurant) { FactoryGirl.create(:restaurant) }
		let!(:restaurant_cuisine) { FactoryGirl.create(:restaurant_cuisine) }
		let!(:movie) { FactoryGirl.create(:movie) }
		let!(:category) { FactoryGirl.create(:category) }
		let!(:movie_category) { FactoryGirl.create(:movie_category) }
		
		it "displays the story title" do
			visit stories_path
			click_on "#{Story.first.name}"
			page.should have_content("#{Story.last.name}")
		end

		it "displays the story description" do
			visit stories_path
			click_on "#{Story.first.name}"
			page.should have_content("#{Story.last.description}")
		end

		it "displays a restaurant" do
			visit stories_path
			click_on "#{Story.first.name}"
			page.should have_content("#{Restaurant.last.name}")
		end		

		it "displays a movie" do
			visit stories_path
			click_on "#{Story.first.name}"
			page.should have_content("#{Movie.last.title}")
		end
	end

	context "creating a new story" do
		let!(:story) { FactoryGirl.create(:story) }
		let!(:cuisine) { FactoryGirl.create(:cuisine) }
		let!(:restaurant) { FactoryGirl.create(:restaurant) }
		let!(:restaurant_cuisine) { FactoryGirl.create(:restaurant_cuisine) }
		let!(:movie) { FactoryGirl.create(:movie) }
		let!(:category) { FactoryGirl.create(:category) }
		let!(:movie_category) { FactoryGirl.create(:movie_category) }
		
		it "displays a form to create a new story" do
			visit new_story_path
			page.should have_content("Name")
		end

		it "creates a new form" do
			visit new_story_path
			fill_in 'Name', with: "Funky Friday"
			fill_in 'Description', with: "You won't regret it."
			page.select("#{Category.last.name}", :from => "Category")
			page.select("#{Cuisine.last.name}", :from => "Cuisine")
			click_on "Create Story"
			current_url.should == stories_url
			page.should have_content("Funky Friday")
		end
	end
end