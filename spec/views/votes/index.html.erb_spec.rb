require 'spec_helper'

describe "votes/index" do
  before(:each) do
    assign(:votes, [
      stub_model(Vote,
        :story_id => 1
      ),
      stub_model(Vote,
        :story_id => 1
      )
    ])
  end

  it "renders a list of votes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
