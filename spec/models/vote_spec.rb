require 'spec_helper'

describe Vote do
	let(:vote) { FactoryGirl.build(:vote) }
	let(:story) { FactoryGirl.create(:story) }
  describe "associations" do
    it "belongs to a Story" do
      vote.story_id << story.id
      vote.story_id.should == story.id
    end
  end
end
