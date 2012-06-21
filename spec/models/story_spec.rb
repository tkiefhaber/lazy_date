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

end
