require 'spec_helper'

describe Story do
  let(:story){ FactoryGirl.create(:story) }

  it "is valid" do
    story.should be_valid
  end

  it "is not valid without a cuisine" do
    story.cuisine = nil
    story.should_not be_valid
  end

  it "is not valid without a category" do
    story.category = nil
    story.should_not be_valid
  end

  it "is not valid without a name" do
    story.name = nil
    story.should_not be_valid
  end

  it "is not valid without a description" do
    story.description = nil
    story.should_not be_valid
  end

  it "has a properly formatted link" do
    story.image_url = "http://images.google.com/burger.jpg"
    story.should be_valid
    story.image_url = "image.com/burger.jpg"
    story.should_not be_valid
    story.image_url = "http://images.google.com/burger.html"
    story.should_not be_valid
  end

end
