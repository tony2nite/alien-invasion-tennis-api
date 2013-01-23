require 'spec_helper'

describe "api/matches/index" do
  before(:each) do
    assign(:matches, [
      stub_model(Match,
        :player_1_id => 1,
        :player_2_id => 2,
        :created_at => 1.days.ago
       ),
      stub_model(Match,
        :player_1_id => 1,
        :player_2_id => 2,
        :created_at => 1.days.ago
      )
    ])
  end

  it "renders a list of matches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    # assert_select "tr>td", :text => 1.to_s, :count => 2
    # assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
